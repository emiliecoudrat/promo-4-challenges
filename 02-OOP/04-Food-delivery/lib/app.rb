require_relative '../lib/controllers/customer_controller'
require_relative '../lib/controllers/employee_controller'
require_relative '../lib/controllers/order_controller'
require_relative '../lib/db/customer_db'
require_relative '../lib/db/employee_db'
require_relative '../lib/db/meal_db'
require_relative '../lib/db/order_db'
require_relative '../lib/models/customer'
require_relative '../lib/models/employee'
require_relative '../lib/models/meal'
require_relative '../lib/models/order'
require_relative '../lib/models/restaurant'
require_relative '../lib/views/customer_view'
require_relative '../lib/views/employee_view'
require_relative '../lib/views/order_view'

require_relative 'router'

# CSV_FILE = File.join(File.dirname(__FILE__), 'recipes.csv')
customer_db = CustomerDatabase.new
customer_controller = CustomerController.new
employee_db = EmployeeDatabase.new
employee_controller = EmployeeController.new
order_db = OrderDatabase.new
order_controller = OrderController.new
meal_db = MealDatabase.new

# router = Router.new(customer_controller, employee_controller, order_controller)

# Start the app
# router.run
