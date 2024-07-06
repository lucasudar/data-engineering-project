import pandas as pd
from sqlalchemy import create_engine, text

# Define your PostgreSQL connection details
DB_USER = "your_username"
DB_PASSWORD = "your_password"
DB_HOST = "your_host"
DB_PORT = "your_port"
DB_NAME = "your_database"

# Create the database connection string
connection_string = (
    f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

# Create the SQLAlchemy engine
engine = create_engine(connection_string)

# Define the schema
SCHEMA = "STG"

# Define the paths to your Excel files
excel_files = ["orders.xls", "people.xls", "returns.xls"]


# Ensure the schema exists
with engine.connect() as connection:
    connection.execute(text(f"CREATE SCHEMA IF NOT EXISTS {SCHEMA}"))

# Iterate over each Excel file
for file in excel_files:
    # Read the Excel file into a DataFrame
    df = pd.read_excel(file)

    # Extract the table name from the file name (e.g., file1.xlsx -> file1)
    table_name = file.split(".")[0]

    # Push the DataFrame to the PostgreSQL database
    df.to_sql(table_name, engine, schema=SCHEMA, if_exists="replace", index=False)
    print(f"Data from {file} has been pushed to the {SCHEMA}.{table_name} table.")
