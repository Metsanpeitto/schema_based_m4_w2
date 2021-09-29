/* Database schema to keep the structure of entire database. */
CREATE TABLE patients (
    id              INT GENERATED ALWAYS AS IDENTITY,
    name            VARCHAR(100),
    date_of_birth   DATE,
    PRIMARY KEY(id)
);


CREATE TABLE  treatments (
    id              INT GENERATED ALWAYS AS IDENTITY,
    type            VARCHAR(100),
    name            VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE invoices (
    id               INT GENERATED ALWAYS AS IDENTITY,
    total_amount     DECIMAL,
    generated_at     DATE,
    payed_at         DATE,  
    medical_history_id INT
    FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id),
    PRIMARY KEY (id)
);

