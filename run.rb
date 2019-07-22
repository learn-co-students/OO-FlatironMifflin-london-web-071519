require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

m1 = Manager.new("MGR1", "Ops", 55)
m2 = Manager.new("MGR2", "HR", 45)
m3 = Manager.new("MGR3", "Marketing", 50)

m1.hire_employee("EMP1", 10000)
m1.hire_employee("EMP2", 10500)
m2.hire_employee("EMP3", 8000)

# Methods Tested

Manager.all
Employee.all
Employee.paid_over(1000)
Manager.average_age
Employee.find_by_department("HR")
Employee.tax_bracket

binding.pry

puts "Done"
