
import pyodbc 
from PIL import Image

# Database connection setup
conn = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=DESKTOP-STPGA09;"
    "DATABASE=medieval;"
    "Trusted_Connection=yes;"
)
cursor = conn.cursor()

def insert_unique_colors(colors):
    """
    Inserts unique colors into the FactionColors table if they don't already exist
    and returns a dictionary mapping each color to its rgb_id.
    """
    color_to_id = {}

    for color in colors:
        red, green, blue = color
        # Check if color exists
        cursor.execute("SELECT rgb_id FROM FactionColors WHERE red = ? AND green = ? AND blue = ?", red, green, blue)
        row = cursor.fetchone()

        if row:
            rgb_id = row[0]
        else:
            # Insert new color and fetch its ID
            cursor.execute("INSERT INTO FactionColors (red, green, blue) VALUES (?, ?, ?);", red, green, blue)
            cursor.execute("SELECT SCOPE_IDENTITY();")  # Get last inserted ID in SQL Server
            rgb_id = cursor.fetchone()[0]
            conn.commit()

        # Map color to its rgb_id
        color_to_id[color] = rgb_id

    return color_to_id

def insert_map_coordinate(x, y, rgb_id):
    """
    Insert a map coordinate into the MapCoordinates table with given x, y, and rgb_id.
    """
    cursor.execute(
        "INSERT INTO MapCoordinates (map_x, map_y, rgb_id) VALUES (?, ?, ?);",
        x, y, rgb_id
    )

def process_tga(file_path):
    # Open the TGA file
    with Image.open(file_path) as img:
        img = img.convert("RGB")  # Ensure it's in RGB format
        width, height = img.size
        
        if width != 510 or height != 337:
            raise ValueError("Image must be 510x337 pixels")
        
        # Step 1: Find unique colors
        unique_colors = set()
        for y in range(height):
            for x in range(width):
                unique_colors.add(img.getpixel((x, y)))

        # Step 2: Insert unique colors into FactionColors table and get mapping
        color_to_id = insert_unique_colors(unique_colors)

        # Step 3: Map each pixel's coordinate with its corresponding rgb_id
        for y in range(height):
            for x in range(width):
                rgb = img.getpixel((x, y))
                rgb_id = color_to_id[rgb]  # Get rgb_id from the color map
                insert_map_coordinate(x, y, rgb_id)
        
        # Commit all changes to the database
        conn.commit()

# Run the script on a specific .tga file
try:
    process_tga("..\\..\\SolutionFiles\\map_regions.tga")
    print("Data successfully inserted into MapCoordinates.")
except Exception as e:
    print(f"An error occurred: {e}")
finally:
    cursor.close()
    conn.close()
