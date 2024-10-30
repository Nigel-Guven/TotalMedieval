import sys

def read_resources(file_path):
    resources = {}
    current_province = None

    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            
            if line.startswith(';'):
                current_province = line[1:].strip()  
                resources[current_province] = []  
            elif line.startswith('resource'):
                resource = line.split('\t')[1].strip().rstrip(',')
                if current_province:
                    resources[current_province].append(resource)

    return resources

def count_resources_per_province(resources, province_list_file):
    province_count = {}

    with open(province_list_file, 'r') as file:
        for line in file:
            province = line.strip()
            province_count[province] = len(resources.get(province, []))

    return province_count

def main():
    resources_file = 'resources\\inputs\\map_resources.txt'
    province_list_file = 'resources\\inputs\\map_provinces.txt'
    processed_configuration_file = 'resources\\outputs\\current_resource_configuration.txt'

    resources = read_resources(resources_file)

    resource_count = count_resources_per_province(resources, province_list_file)

    sorted_resource_count = sorted(resource_count.items(), key=lambda item: item[1], reverse=True)

    with open(processed_configuration_file, 'w', encoding='utf-8', errors='ignore', newline='\n') as fileWriter:
        for province, count in sorted_resource_count:
            fileWriter.write(f"{province}: {count} resources\n")

    print(f"Resource counts have been written to {processed_configuration_file}.")

    fileWriter.close()    

if __name__ == "__main__":
    main()
    sys.exit()