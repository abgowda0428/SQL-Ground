USE MyDatabase;

CREATE TABLE employees_new (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    hire_date DATE,
    salary DECIMAL(10,2),
    job_title VARCHAR(50),
    department_id INT,
    manager_id INT,
    city VARCHAR(50),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO employees_new (emp_id, emp_name, email, phone, hire_date, salary, job_title, department_id, manager_id, city) VALUES
(1, 'John Doe', 'john.doe@example.com', '9876543210', '2023-01-10', 75000, 'Software Engineer', 1, 1001, 'Bangalore'),
(2, 'Sara Khan', 'sara.khan@example.com', '9876543211', '2023-02-15', 65000, 'Marketing Executive', 2, 1002, 'Mumbai'),
(3, 'Ravi Patel', 'ravi.patel@example.com', '9876543212', '2023-03-05', 70000, 'Sales Analyst', 3, 1003, 'Delhi'),
(4, 'Priya Menon', 'priya.menon@example.com', '9876543213', '2023-03-20', 50000, 'HR Associate', 4, 1004, 'Bangalore'),
(5, 'Arjun Nair', 'arjun.nair@example.com', '9876543214', '2023-04-01', 90000, 'Financial Analyst', 5, 1005, 'Chennai'),
(6, 'Sneha Reddy', 'sneha.reddy@example.com', '9876543215', '2023-05-10', 55000, 'IT Support Eng', 6, 1006, 'Hyderabad'),
(7, 'Karan Gupta', 'karan.gupta@example.com', '9876543216', '2023-06-12', 48000, 'Operations Lead', 7, 1007, 'Pune'),
(8, 'Nisha Roy', 'nisha.roy@example.com', '9876543217', '2023-07-01', 62000, 'Legal Advisor', 8, 1008, 'Delhi'),
(9, 'Vikram Joshi', 'vikram.joshi@example.com', '9876543218', '2023-08-05', 58000, 'Admin Officer', 9, 1009, 'Bangalore'),
(10, 'Meera Iyer', 'meera.iyer@example.com', '9876543219', '2023-09-20', 95000, 'Research Scientist', 10, 1010, 'Chennai'),
(11, 'Anil Sharma', 'anil.sharma@example.com', '9876543220', '2023-10-01', 72000, 'Backend Engineer', 1, 1001, 'Bangalore'),
(12, 'Deepika Rao', 'deepika.rao@example.com', '9876543221', '2023-10-05', 68000, 'Frontend Dev', 1, 1001, 'Bangalore'),
(13, 'Kavya Das', 'kavya.das@example.com', '9876543222', '2023-10-10', 45000, 'Recruiter', 4, 1004, 'Bangalore'),
(14, 'Mohit Jain', 'mohit.jain@example.com', '9876543223', '2023-10-15', 72000, 'Accountant', 5, 1005, 'Chennai'),
(15, 'Rajesh Verma', 'rajesh.verma@example.com', '9876543224', '2023-10-20', 67000, 'Sales Executive', 3, 1003, 'Delhi'),
(16, 'Asha Kiran', 'asha.kiran@example.com', '9876543225', '2023-10-25', 60000, 'Marketing Analyst', 2, 1002, 'Mumbai'),
(17, 'Rohan Singh', 'rohan.singh@example.com', '9876543226', '2023-10-30', 88000, 'DevOps Engineer', 6, 1006, 'Hyderabad'),
(18, 'Neha Pandey', 'neha.pandey@example.com', '9876543227', '2023-11-01', 92000, 'Data Engineer', 1, 1001, 'Bangalore'),
(19, 'Amit Tiwari', 'amit.tiwari@example.com', '9876543228', '2023-11-05', 77000, 'Finance Manager', 5, 1005, 'Chennai'),
(20, 'Divya Jain', 'divya.jain@example.com', '9876543229', '2023-11-10', 53000, 'Office Assistant', 9, 1009, 'Bangalore');

