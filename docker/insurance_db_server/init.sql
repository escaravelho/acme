CREATE DATABASE IF NOT EXISTS insurance_db;
CREATE USER IF NOT EXISTS 'insurance_db_user'@'%' IDENTIFIED BY 'insurance_db_password';
GRANT ALL PRIVILEGES ON *.* TO 'insurance_db_user'@'%';
FLUSH PRIVILEGES;

USE insurance_db;

CREATE TABLE IF NOT EXISTS customer (
    id BIGINT PRIMARY KEY,
    document_number INT,
    username VARCHAR(250) NOT NULL,
    user_type VARCHAR(10) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    email VARCHAR(200) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    date_of_birth DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS assistances (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    assistances JSON
)

CREATE TABLE IF NOT EXISTS coverages (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    coverages JSON
)

CREATE TABLE IF NOT EXISTS insurance (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    insurance_policy_id BIGINT,
    category VARCHAR(100) NOT NULL,
    product_id VARCHAR(150) NOT NULL,
    offer_id VARCHAR(150) NOT NULL,
    FOREIGN KEY (customer_document) REFERENCES customer(document_number),
    FOREIGN KEY (assistances_id) REFERENCES assistances(id),
)

commit;