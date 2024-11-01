
from PIL import Image

def extract_coordinates(tga_file, target_colors):
    # Open the TGA file
    img = Image.open(tga_file)
    
    # Ensure the image is 510x377
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

    # Print coordinates for specified colors
    for rgb, coordinates in color_coordinates.items():
        if coordinates:
            r, g, b = rgb
            print(f"Color (R={r}, G={g}, B={b}): Coordinates -> {coordinates}")
        else:
            print(f"Color (R={r}, G={g}, B={b}) not found in image.")

# List of target RGB colors (as tuples) to search for
target_colors = [
    (41, 140, 235)    # Example color 2
]

# Path to the TGA file
extract_coordinates("..\\..\\SolutionFiles\\map_regions.tga", target_colors)
