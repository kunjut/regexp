# Поиск из замена: sub, sub!, gsub, gsub!
phone = "My phone number +7(967)309-80-32"
phone.gsub!(/\d/, "")
p phone          # "My phone number +()--"

# В качестве шаблона вместо рег.выражения
# можно использовать и строку
phone2 = "my num my num +7(967)309-80-32"
phone2.gsub!("my num ", "")
p phone2         # "+7(967)309-80-32"

# Но рег.в позволяет более гибко действовать
str = "rails grails rails"
p str.gsub("rails", "Rails")             # "Rails gRails Rails"
p str.gsub!(/\brails\b/, "Rails")        # "Rails grails Rails"
p str.gsub(/\brails\b/i, '<b>\0</b>')    # "<b>Rails</b> grails <b>Rails</b>"
p str.gsub(/\brails\b/i, "<b>\0</b>")    # "<b>\u0000</b> grails <b>\u0000</b>"
p str.gsub(/\brails\b/i, "<b>\\0</b>")   # "<b>Rails</b> grails <b>Rails</b>"