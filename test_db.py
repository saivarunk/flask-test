import psycopg2

def postgres_test():

    try:
        conn = psycopg2.connect("dbname='postgres' user='postgres' host='localhost' password='postgres'")
        conn.close()
        return True
    except:
        return False