import json
import sys
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
        return f'"{value}"'
    elif isinstance(value, (int, float)):
        return str(value)
    elif value is None:
        return "Null"
    else:
        raise ValueError(f"Unsupported JSON value: {value}")

def process_events(events):
    processed = []
    for event in events:
        if isinstance(event, dict) and len(event) >= 1:
            # Assume the first element is time
            time = event["time"]
            if isinstance(time, (int, float)):
                event["time"] = int(time * 10**4)
        processed.append(event)
    return processed

def convert_qlog_to_tla(qlog_data):
    return json_value_to_tla(qlog_data)

def main():
    if len(sys.argv) != 3:
        print("Usage: python log_analyser.py input.json output.txt")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2]

    with open(input_file, 'r') as f:
        qlog_data = json.load(f)
    
    if not isinstance(qlog_data, dict) or 'traces' not in qlog_data:
        raise ValueError("Invalid JSON structure: Expected dictionary with 'traces' key.")

    events = qlog_data['traces'][0]["events"]

    processed_events = process_events(events)
    tla_text = convert_qlog_to_tla(processed_events)

    directory = os.path.dirname(output_file)
    if directory and not os.path.exists(directory):
        os.makedirs(directory, exist_ok=True)

    with open(output_file, 'w') as f:
        f.write(tla_text)

    print(f"Converted {input_file} to {output_file} successfully!")

if __name__ == "__main__":
    main()
