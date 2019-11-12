# именованные захваты и локальные переменные
if /(?<lang>\w+) (?<ver>\d(\.\d)+) (?<review>\w+)!/ =~ "Ruby 2.4.4 rocks!"
  p lang
  p ver
  p review
end

# присваивание переменным значений работает если слева от =~
# указано регулярное выражение в буквальном виде,

# не сработает если шаблон указан в константе, переменной, вызван методом,
# или находится справа от =~