input_file = 'resources\\inputs\\map_resources.txt'
output_file = 'resources\\outputs\\resources_by_province_configuration.txt'

province_resources = {}

with open(input_file, 'r') as file:
    current_province = None
    for line in file:
        line = line.strip()
        
        if line.startswith(';'):
            current_province = line[1:].strip()
            province_resources[current_province] = []
        
        elif line.startswith('resource') and current_province:
            resource_name = line.split('\t')[1].strip().strip(',')
            if resource_name:
                province_resources[current_province].append(resource_name)

with open(output_file, 'w') as file:
    for province, resources in province_resources.items():
        file.write(f"{province}:\n")
        for resource in resources:
            file.write(f"  - {resource}\n")
        file.write("\n")

print(f"Processed data has been saved to '{output_file}'")

