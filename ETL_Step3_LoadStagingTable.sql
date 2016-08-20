LOAD DATA LOCAL
INFILE 'C:\\Citi\\Pune\\ETL Coursware\\Student\\bank-data.csv'
IGNORE
INTO TABLE northwind.bank_data
FIELDS TERMINATED BY ','
IGNORE 1 LINES



