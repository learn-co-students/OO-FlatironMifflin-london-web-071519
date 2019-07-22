class Manager
    
    attr_accessor :name, :department, :age, :employees

@@all_managers = []

@@all_ages = []

@@all_departments = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department
        @employees = []
        @@all_managers << self
        @@all_ages << age
        @@all_departments << department
    end

    def hire_employee(name, salary)
        @employees << "#{name}, #{salary}"
        Employee.all.each do |employee|
            if name == employee.name
                employee.department = self.department
                employee.manager = self.name
            end
        end
    end

    def employees
        @employees
    end

    def self.all
        @@all_managers
    end

    def self.all_departments
        @@all_departments
    end

    def self.average_age
        @@all_ages.reduce(:+) / @@all_ages.size.to_f
    end
end
