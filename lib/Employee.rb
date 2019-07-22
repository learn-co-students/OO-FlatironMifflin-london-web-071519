class Employee
attr_reader :name
attr_writer
attr_accessor :manager, :salary
@@all = []

    def initialize(name, salary, mgr)
        @salary = salary
        @manager = mgr
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        @manager
    end

    def self.paid_over(amount)
        @@all.select{|employee| employee.salary > amount}
    end

    def self.find_by_department(dep)
        @@all.select{|employee| employee.department == dep}
    end

    def tax_bracket
        @@all.select {|employee| employee.salary.between?(self.salary-1000, self.salary+1000)}
    end


end
