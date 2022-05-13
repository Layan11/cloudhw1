
import os

user = os.environ['POSTGRES_USER']
password = os.environ['POSTGRES_PASSWORD']
host = os.environ['POSTGRES_HOST']
database = os.environ['POSTGRES_DB']
port = int(os.environ['POSTGRES_PORT'])

# user = 'test'
# password = 'password'
# host = '127.0.0.1'
# database = 'example'
# port = 5432

DATABASE_CONNECTION_URI = f'postgresql+psycopg2://{user}:{password}@{host}:{port}/{database}'
