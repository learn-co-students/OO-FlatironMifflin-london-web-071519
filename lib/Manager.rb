class Manager
attr_reader :name
attr_writer
attr_accessor :department, :age, :department
@@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        # @employees = []
        @age = age
        @@all << self

    end

    def self.all
        @@all
    end

    def hire_employee(emp_name, salary)
        Employee.new(emp_name, salary, self)
    end

    def self.all_departments
        @@all.map{|manager| manager.department}
    end

    def self.average_age
        avg = @@all.map{|manager| manager.age}
        (avg.sum/avg.count).to_f
    end

end
