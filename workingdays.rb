# Get the working days from between two dates. Note: In my case, i add 3 months to first date and consider the sunday
# like not working day, if your like add the saturday too and use the table of your holidays.
# Author: Yonatha Almeida <yonathalmeida@gmail.com>

require 'date'

d1 = (Date.parse "12/10/2016") - 90 # months
d2 = (Date.parse "20/10/2016")

p "Period #{d1.strftime("%d.%m.%Y")} to #{d2.strftime("%d.%m.%Y")}"

workingdays = 0
sunday = 0
(d1..d2).each do |days|

  p days.strftime("%A")

  unless days.strftime("%A") == 'Sunday'
    workingdays += 1
  else
    sunday += 1
 end
end

p "#{workingdays} working days"
p "#{sunday} Sunday"

