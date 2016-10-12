require 'date'

d1 = (Date.parse "12/10/2016") - 90
d2 = (Date.parse "20/10/2016")

p "Periodo #{d1.strftime("%d.%m.%Y")} a #{d2.strftime("%d.%m.%Y")}"

dias_uteis = 0
domingos = 0
(d1..d2).each do |dias|

  p dias.strftime("%A")

  unless dias.strftime("%A") == 'Sunday'
    dias_uteis += 1
  else
    domingos += 1
 end
end

p "#{dias_uteis} dias uteis"
p "#{domingos} domingos"

