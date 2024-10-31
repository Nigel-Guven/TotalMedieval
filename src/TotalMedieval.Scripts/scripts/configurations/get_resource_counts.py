from collections import defaultdict

def count_resources(file_path, output_file='resources\\outputs\\resource_counts.txt'):
    resource_counts = defaultdict(int)
    
    try:
        with open(file_path, 'r') as file:
            for line in file:
                line = line.strip()
                if line.startswith(';') or not line:
                    continue

                parts = line.split()
                if len(parts) > 1 and parts[0] == 'resource':
                    resource_name = parts[1].strip()
                    resource_counts[resource_name] += 1
                    
    except FileNotFoundError:
        print(f"The file {file_path} was not found.")
        return
    
    # Sort resources by count in descending order
    sorted_resources = sorted(resource_counts.items(), key=lambda item: item[1], reverse=True)
    
    with open(output_file, 'w') as out_file:
        for resource, count in sorted_resources:
            out_file.write(f"{resource}: {count}\n")
    
    print(f"Resource counts have been written to {output_file}")

count_resources('resources\\inputs\\map_resources.txt')