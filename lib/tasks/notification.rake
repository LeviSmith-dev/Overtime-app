namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do

    if Time.now.sunday?
    employees = Employee.all
    notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://wlp-overtime.herokuapp.com"
    employees.each do |employee|
      SmsTool.send_sms(number: employee.phone, message: notification_message)
    end
  end
end
  	# 1. Schedule to run at Sunday at 5pm
  	# 2. Iterate over all employees
  	# 3. Skip AdminUsers
  	# 4. Send a message that has instructions and a link to log time
  	# User.all.each do |user|
  	# 	SmsTool.send_sms()
  	# end
  	# number: "555-555-3323"
  	# number: "5555553323"
  	# No spaces or dashes
  	# exactly 10 characters
  	# all characters have to be a number

