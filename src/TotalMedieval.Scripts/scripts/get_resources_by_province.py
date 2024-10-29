# Define file paths
input_file = 'resources\\map_resources.txt'
output_file = 'resources\\current_province_configuration.txt'

# Initialize a dictionary to store resources by province
province_resources = {}

# Read the input file and parse provinces and resources
with open(input_file, 'r') as file:
    current_province = None
    for line in file:
        line = line.strip()
        # Identify new province
        if line.startswith(';'):
            current_province = line[1:].strip()
            province_resources[current_province] = []
        # Identify resources within a province
        elif line.startswith('resource') and current_province:
            resource_name = line.split('\t')[1].strip().strip(',')
            if resource_name:  # Avoid empty entries
                province_resources[current_province].append(resource_name)

# Write the processed data to a new output file
with open(output_file, 'w') as file:
    for province, resources in province_resources.items():
        file.write(f"{province}:\n")
        for resource in resources:
            file.write(f"  - {resource}\n")
        file.write("\n")

print(f"Processed data has been saved to '{output_file}'")

