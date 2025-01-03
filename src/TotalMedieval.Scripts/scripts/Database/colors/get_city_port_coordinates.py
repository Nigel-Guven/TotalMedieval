from PIL import Image

def extract_coordinates_and_generate_sql(tga_file, target_colors):
    # Open the TGA file
    img = Image.open(tga_file)

    # Ensure the image is 510x337
    if img.size != (510, 337):
        print("Error: Image dimensions are not 510x337.")
        print(img.size)
        return

    # Convert the image to RGB mode if not already
    img = img.convert("RGB")

    # Dictionary to store coordinates by RGB color
    color_coordinates = {color: [] for color in target_colors}

    # Loop through each pixel to get RGB color and coordinates
    for y in range(img.height):
        for x in range(img.width):
            rgb = img.getpixel((x, y))
            if rgb in target_colors:
                color_coordinates[rgb].append((x, y))

    # Write SQL statements to a file
    with open("port_coordinates.txt", "w") as file:
        for rgb, coordinates in color_coordinates.items():
            if coordinates:
                for coord in coordinates:
                    x, y = coord
                    if rgb == (255, 255, 255):  # Special case for color (255, 255, 255)
                        sql_statement = (f"UPDATE dbo.MapCoordinates \n"
                                         f"SET map_object_id = 76 \n"
                                         f"WHERE x = {x} AND y = {y};\n")
                    else:  # General case
                        sql_statement = (f"UPDATE dbo.MapCoordinates \n"
                                         f"SET map_object_id = 76 \n"
                                         f"WHERE x = {x} AND y = {y};\n")
                    file.write(sql_statement)
            else:
                r, g, b = rgb
                file.write(f"-- No coordinates found for color (R={r}, G={g}, B={b})\n")

# List of target RGB colors (as tuples) to search for
target_colors = [
    (255, 255, 255)  # Example color
]

# Path to the TGA file
extract_coordinates_and_generate_sql("..\\..\\SolutionFiles\\map_regions.tga", target_colors)
