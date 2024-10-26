import sys

# Function to read resources from x.txt
def read_resources(file_path):
    resources = {}
    current_province = None

    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            # Check for province header
            if line.startswith(';'):
                current_province = line[1:].strip()  # Get the province name without ';'
                resources[current_province] = []  # Initialize an empty list for the province
            elif line.startswith('resource'):
                # Extract the resource and clean it
                resource = line.split('\t')[1].strip().rstrip(',')
                if current_province:
                    resources[current_province].append(resource)  # Add resource to the current province

    return resources

# Function to count resources per province based on y.txt
def count_resources_per_province(resources, province_list_file):
    province_count = {}

    # Initialize the counts for provinces in y.txt
    with open(province_list_file, 'r') as file:
        for line in file:
            province = line.strip()
            province_count[province] = len(resources.get(province, []))  # Count resources if province exists

    return province_count

# Main script execution
def main():
    resources_file = 'resources\\map_resources.txt'
    province_list_file = 'resources\\map_provinces.txt'
    processed_configuration_file = 'resources\\current_configuration.txt'

    # Read resources from x.txt
    resources = read_resources(resources_file)

    # Count resources for provinces listed in y.txt
    resource_count = count_resources_per_province(resources, province_list_file)

    sorted_resource_count = sorted(resource_count.items(), key=lambda item: item[1], reverse=True)

     # Open the file for writing results
    with open(processed_configuration_file, 'w', encoding='utf-8', errors='ignore', newline='\n') as fileWriter:
        # Write the results to the file
        for province, count in sorted_resource_count:
            fileWriter.write(f"{province}: {count} resources\n")  # Add a newline at the end

    print(f"Resource counts have been written to {processed_configuration_file}.")

    fileWriter.close()    

# Run the script
if __name__ == "__main__":
    main()
    sys.exit()