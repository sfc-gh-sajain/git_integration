from snowflake.snowpark.session import Session 
from snowflake.snowpark import DataFrame 
from snowflake.snowpark.functions import col
import json

def hello(session: Session) -> DataFrame:
    df = session.table("sample_db.public.customers_sample")
    #df = df.filter(col("STATE") == 'NY')
    return df

# For local debugging
if __name__ == "__main__":
    session = Session.builder.configs(json.load(
      open("snowflake_connection.json"))).create()
    print (hello(session).show())