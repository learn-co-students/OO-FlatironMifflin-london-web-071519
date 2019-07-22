
require_relative "Employee.rb"

class Manager

  @@all = []

  attr_accessor :name, :age, :department, :employees

  def initialize(name:, age:, department:)
    @name = name
    @age = age
    @department = department
    @employees = []
    @@all << self
  end

  def self.name
    @name
  end

  def self.department
    @department
  end

  def self.age
    @age
  end

  def manager_employees
    Employee.all.select{|employee| employee.manager_name == @name}
  end

  def hire_employee(name:, salary:)
    @employees << "#{name}"
    @employees << salary
  end

  def self.all_departments
    @@all.map {|manager| manager.department}
  end

  def self.average_age
    @@all.map {|manager| manager.age}.sum / @@all.count.to_f
  end

  def self.all
    @@all
  end

end
