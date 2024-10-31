import yaml
from collections import defaultdict, Counter

with open('resources\\inputs\\map_macro_regions.yaml', 'r') as file:
    data = yaml.safe_load(file)

regions = data['macro']  

province_to_region = {}
for region, provinces in regions.items():
    for province in provinces:
        province_to_region[province] = region

resources_by_region = defaultdict(Counter)

resources_file_path = 'resources\\inputs\\map_resources.txt'

with open(resources_file_path, 'r') as file:
    current_province = None
    for line in file:
        line = line.strip()

        if line.startswith(';'):
            current_province = line[1:].strip() 
        elif line.startswith('resource') and current_province:
            _, resource = line.split()
            
            
            if current_province in province_to_region:
                region = province_to_region[current_province]
                resources_by_region[region][resource] += 1

sorted_resources = [
    (region, sum(resources.values())) for region, resources in resources_by_region.items()
]

sorted_resources.sort(key=lambda x: x[1], reverse=True)

output_file_path = 'resources\\outputs\\macro_regions_resources_count.txt'
with open(output_file_path, 'w') as output_file:
    output_file.write("Resources by Macro Region (with counts):\n")
    for region, total_resources in sorted_resources:
        output_file.write(f"{region}: {total_resources} {{\n")
        for res, count in resources_by_region[region].items():
            output_file.write(f"  {res}: {count},\n")
        output_file.write("}\n")

print(f"Output written to {output_file_path}")
