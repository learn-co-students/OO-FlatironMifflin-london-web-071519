class Employee

  @@all = []

  attr_accessor :name, :salary, :manager_name

  def initialize(name:, salary:, manager_name:)
    @name = name
    @salary = salary
    @manager_name = manager_name

    @@all << self
  end

  def self.name
    @name
  end

  def self.salary
    @salary
  end

  def self.manager_name
    @manager_name
  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    @@all.select {|employee| employee.salary > salary}
  end

  def self.find_by_department(department_name)
    Manager.all.select {|employee| employee.department == department_name}.first
  end

  def tax_bracket
    @@all.select {|employee| employee.salary.between?(self.salary - 1000, self.salary + 1000) }
  end

end
