import re

def generate_update_script(file_path):
    sql_statements = []
    
    with open(file_path, 'r') as file:
        lines = file.readlines()
        
        province_name = None
        for i, line in enumerate(lines):
            # Check for province name line
            if i % 9 == 0:  # Each record is 9 lines
                province_name = line.strip()
            # Check for RGB color line
            elif i % 9 == 4:
                rgb_values = line.strip()
                red, green, blue = map(int, rgb_values.split())
                
                # Generate the SQL update statement
                sql_statement = (
                    f'UPDATE dbo.FactionColors SET description = "{province_name}" '
                    f'WHERE red = {red} AND green = {green} AND blue = {blue};'
                )
                sql_statements.append(sql_statement)
    
    # Output the SQL statements
    with open('scripts\\database\\colors\\generate_region_color_sql.txt', 'w') as output_file:
        output_file.write("\n".join(sql_statements))

    print("SQL update script generated successfully as generate_region_color_sql.txt")

# Use the path to the file containing region descriptions
generate_update_script('..\\..\\SolutionFiles\\descr_regions.txt')