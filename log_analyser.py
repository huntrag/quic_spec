import json
import sys
import os

def json_value_to_tla(value):
    if isinstance(value, dict):
        fields = [f'{k} |-> {json_value_to_tla(v)}' for k, v in value.items()]
        return f"[ {', '.join(fields)} ]"
    elif isinstance(value, list):
        elements = [json_value_to_tla(elem) for elem in value]
        return f"<< {', '.join(elements)} >>"
    elif isinstance(value, str):
        return f'"{value}"'
    elif isinstance(value, (int, float)):
        return str(value)
    elif value is None:
        return "Null"
    else:
        raise ValueError(f"Unsupported JSON value: {value}")

def convert_qlog_to_tla(qlog_data):
    tla_constants = json_value_to_tla(qlog_data)
    return tla_constants

def main():
    input_file = sys.argv[1]
    output_file = sys.argv[2]

    with open(input_file, 'r') as f:
        qlog_data = json.load(f)
    
    if isinstance(qlog_data, dict):
        qlog_traces = qlog_data['traces']
    else:
        raise ValueError("Empty dictionary.")

    tla_text = convert_qlog_to_tla(qlog_traces[0]["events"])

    directory = os.path.dirname(output_file)

    if directory and not os.path.exists(directory):
        os.makedirs(directory, exist_ok=True) 

    with open(output_file, 'w') as f:
        f.write(tla_text)

    print(f"Converted {input_file} to {output_file} successfully!")

if __name__ == "__main__":
    main()
