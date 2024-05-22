CREATE TABLE employee_department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Crear tabla employee_hobby
CREATE TABLE employee_hobby (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

-- Crear tabla employee
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    hobby_id INT,
    FOREIGN KEY (department_id) REFERENCES employee_department(id),
    FOREIGN KEY (hobby_id) REFERENCES employee_hobby(id)
);

-- Insertar datos en employee_department
INSERT INTO employee_department (name, description) VALUES
('HR', 'Human Resources'),
('Engineering', 'Engineering Department'),
('Sales', 'Sales Department'),
('Marketing', 'Marketing Department'),
('Finance', 'Finance Department'),
('IT', 'Information Technology');

-- Insertar datos en employee_hobby
INSERT INTO employee_hobby (name, description) VALUES
('Reading', 'Reading Books'),
('Hiking', 'Hiking in mountains'),
('Gaming', 'Playing video games');

-- Insertar datos en employee
INSERT INTO employee (first_name, last_name, department_id, hobby_id) VALUES
('John', 'Doe', 1, 1),
('Jane', 'Smith', 2, 2),
('Alice', 'Johnson', 3, 3),
('Bob', 'Brown', 4, 1);

CREATE TABLE employee_hobby_employee (
    id_employee INTEGER REFERENCES employee (id), 
    id_hobby INTEGER REFERENCES employee_hobby (id) ON DELETE RESTRICT
);

INSERT INTO employee_hobby VALUES
(1, 'Escuchar musica', 'Escuchar musica por spotify');
INSERT INTO employee_hobby VALUES
(2, 'Jugar futboll', 'Jugar futboll en el estadio nacional');
INSERT INTO employee_hobby VALUES
(3, 'Dibujar', 'Dibujar con crayones y otros elementos');

INSERT INTO employee_hobby_employee VALUES
(1, 1);
INSERT INTO employee_hobby_employee VALUES
(1, 3);
INSERT INTO employee_hobby_employee VALUES
(2, 2);
INSERT INTO employee_hobby_employee VALUES
(2, 3);
INSERT INTO employee_hobby_employee VALUES
(3, 1);
INSERT INTO employee_hobby_employee VALUES
(3, 2);
INSERT INTO employee_hobby_employee VALUES
(4, 1);
INSERT INTO employee_hobby_employee VALUES
(4, 2);
