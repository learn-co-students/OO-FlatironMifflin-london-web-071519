require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

rick = Manager.new("Rick", 52, "Sanitary")
sam = Manager.new("Sam", 41, "Production")
thomas = Manager.new("Tommy", 57, "Sanitary")
luke = Manager.new("Luke", 35, "Production")

jimmy = Employee.new("Jimmy", 25000)
jose = Employee.new("Jose", 23000)
ross = Employee.new("Ross", 26000)
john = Employee.new("John", 25000)
louie = Employee.new("Louie", 25500)
doug = Employee.new("Doug", 27000)
alex = Employee.new("Alex", 24500)
chris = Employee.new("Chris", 26000)


rick.hire_employee("Jimmy", 25000)
rick.hire_employee("Jose", 23000)
luke.hire_employee("Ross", 26000)
luke.hire_employee("John", 25000)
thomas.hire_employee("Louie", 25500)
thomas.hire_employee("Doug", 27000)
sam.hire_employee("Alex", 23500)
sam.hire_employee("Chris", 26000)


binding.pry
puts "done"
