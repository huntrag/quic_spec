import json
import os

def json_value_to_tla(value, indent=0):
    space = " " * indent
    if isinstance(value, dict):
        fields = []
        for k, v in value.items():
            field = f'{space}  {k} |-> {json_value_to_tla(v, indent + 2)}'
            fields.append(field)
        return "[\n" + ",\n".join(fields) + f"\n{space}]"
    elif isinstance(value, list):
        elements = []
        for elem in value:
            elements.append(f"{space}  {json_value_to_tla(elem, indent + 2)}")
        return "<<\n" + ",\n".join(elements) + f"\n{space}>>"
    elif isinstance(value, str):
        # Properly escape quotes for TLA+
        return '"' + value.replace('"', r'\"') + '"'
    elif isinstance(value, bool):
        return "TRUE" if value else "FALSE"
    elif isinstance(value, float):
        # TLC does not support real numbers: convert to int (rounded)
        return str(int(round(value)))
        # If you want more precision, multiply before rounding:
        # return str(int(round(value * 1_000_000)))  # e.g. store microseconds as int
    elif isinstance(value, int):
        return str(value)
    elif value is None:
        return "Null"
    else:
        raise ValueError(f"Unsupported JSON value: {value}")

def normalize_and_scale_time(events, scalediv=1000):
    # Find min time
    times = [e.get("time", 0) for e in events if isinstance(e, dict) and "time" in e]
    min_time = min(times) if times else 0
    for event in events:
        if isinstance(event, dict) and "time" in event:
            t = event["time"]
            if isinstance(t, (int, float)):
                event["time"] = int(round((t - min_time) / scalediv))
    return events

def json_events_file_to_tla_constant(json_file_path, const_name, scalediv=1000):
    with open(json_file_path, 'r') as f:
        data = json.load(f)
    if not isinstance(data, dict) or 'traces' not in data:
        raise ValueError(f"{json_file_path}: Expected top-level dict with 'traces'")
    traces = data['traces']
    if not traces or 'events' not in traces[0]:
        raise ValueError(f"{json_file_path}: No events found in traces")
    events = traces[0]['events']
    events = normalize_and_scale_time(events, scalediv)
    tla_value = json_value_to_tla(events)
    return f"{const_name} == \n{tla_value}\n"

def write_mc_tla(server_json, client_json, output_tla, qlogtrace_module="QLogTrace3"):
    const_server = json_events_file_to_tla_constant(server_json, "ConstServerTrace")
    const_client = json_events_file_to_tla_constant(client_json, "ConstClientTrace")
    
    tla_module = f"""---- MODULE MC ----
EXTENDS {qlogtrace_module}, TLC

{const_server}
----

{const_client}
----

=============================================================================
"""
    with open(output_tla, "w") as f:
        f.write(tla_module)
    print(f"Wrote {output_tla} with ConstServerTrace and ConstClientTrace.")

# Example usage:
# write_mc_tla("server.json", "client.json", "MC.tla")

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 4:
        print("Usage: python generate_mc_tla.py server_trace.json client_trace.json output_file.tla")
        sys.exit(1)
    write_mc_tla(sys.argv[1], sys.argv[2], sys.argv[3])
