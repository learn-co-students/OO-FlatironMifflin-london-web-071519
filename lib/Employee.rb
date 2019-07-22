require 'pry'
class Employee

    attr_accessor :name, :salary, :manager, :employees, :department

@@all_employees = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @manager = manager
        @department = department
        @@all_employees << self
    end

    def self.all
        @@all_employees
    end

    def tax_bracket
        @@all_employees.select {|employees| 
        employees.salary.between?(self.salary - 1000, self.salary + 1000)}
    end

    def self.paid_over(wage)
        @@all_employees.select {|employees| employees.salary > wage }
    end

    def self.find_by_department(area)
        @@all_employees.select {|employees| employees.department == area }
    end
end
