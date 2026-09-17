# Daryion King 
# 9/16/2026
# EmployeePay.R
# A data frame of current employee salaries and if an employee is exempt from 
# overtime.

# Creating a data frame from example table
employees <- data.frame(
  EmployeeID = c(1001, 1002, 1003, 1004, 1005), 
  LastName = c("Smith", "Norris", "Johnson", "Hart", "Owens"),
  Salary = c(45000, 51000, 36000, 39000, 42000),
  stringsAsFactors = F
)

# Running a summary of the "employees" data frame
summary(employees)

# Cbinding employees exempt from OT
ext <- c("N", "Y")
Exempt <- ext[(employees$Salary > 50000) + 1]
employees <- cbind(employees, Exempt)

employees

# Extracting the first 2 rows of the "employees" data frame
employees[1:2, ]

# Showing the structure of the "employees" data frame
str(employees)

# Rbinding new employee information
newEmployee <- data.frame(
  EmployeeID = 1006,
  LastName = "Rogers",
  Salary = 55000,
  Exempt = "Y"
)

employees <- rbind(employees, newEmployee)

employees



