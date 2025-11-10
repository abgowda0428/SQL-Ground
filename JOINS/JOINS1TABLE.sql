USE MyDatabase

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    manager_id INT,
    location VARCHAR(100),
    budget DECIMAL(10,2),
    floor_no INT,
    extension_no VARCHAR(10),
    building_name VARCHAR(50),
    region VARCHAR(50),
    created_date DATE
);

INSERT INTO departments (department_id, department_name, manager_id, location, budget, floor_no, extension_no, building_name, region, created_date) VALUES
(1, 'Engineering', 1001, 'Bangalore', 800000.00, 2, 'EXT101', 'Apex Tower', 'South', '2023-01-15'),
(2, 'Marketing', 1002, 'Mumbai', 500000.00, 3, 'EXT102', 'Skyline Plaza', 'West', '2023-02-10'),
(3, 'Sales', 1003, 'Delhi', 600000.00, 4, 'EXT103', 'Silver Block', 'North', '2023-03-05'),
(4, 'HR', 1004, 'Bangalore', 300000.00, 1, 'EXT104', 'Apex Tower', 'South', '2023-03-20'),
(5, 'Finance', 1005, 'Chennai', 700000.00, 2, 'EXT105', 'Tech Park', 'South', '2023-04-01'),
(6, 'IT Support', 1006, 'Hyderabad', 400000.00, 5, 'EXT106', 'Tech Hub', 'South', '2023-05-12'),
(7, 'Operations', 1007, 'Pune', 350000.00, 3, 'EXT107', 'Orchid Tower', 'West', '2023-06-25'),
(8, 'Legal', 1008, 'Delhi', 200000.00, 2, 'EXT108', 'Silver Block', 'North', '2023-07-18'),
(9, 'Admin', 1009, 'Bangalore', 250000.00, 1, 'EXT109', 'Apex Tower', 'South', '2023-08-09'),
(10, 'Research', 1010, 'Chennai', 900000.00, 6, 'EXT110', 'Tech Park', 'South', '2023-09-30');


