-- Create the Departments table
CREATE TABLE Departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(255) NOT NULL
);

-- Create the Employees table
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    department_id INT REFERENCES Departments(department_id)
);

-- Insert sample departments
INSERT INTO Departments (department_name) VALUES
    ('HR'),
    ('IT'),
    ('Marketing');

-- Insert sample employees
INSERT INTO Employees (employee_name, department_id) VALUES
    ('John Doe', 1),
    ('Jane Smith', 2),
    ('Bob Johnson', 1),
    ('Alice Brown', 3);