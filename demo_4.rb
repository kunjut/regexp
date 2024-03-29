pattern = /(Ruby|Perl)(\s+)(rocks|sucks)!/  # Шаблон с тремя подшаблонами
text = "Ruby\trocks!"                       # Сравниваемый текст
p pattern =~ text         # => 0: текст соответствует шаблону с первого символа

# При вызове метода Regexp.last_match без аргументов, возвращается то же значение
# что и при ссылке на $~

data = Regexp.last_match  # Получение подробностей соответствия
p data.size               # => 4: объекты MatchData ведут себя как массивы
p data[0]                 # => "Ruby\trocks!": соответствующий текст целиком
p data[1]                 # => "Ruby": текст, соответствующий первому подшаблону
p data[2]                 # => "\t": текст, соответстующий второму подшаблону
p data[3]                 # => "rocks": текст, соответствующий третьему подшаблону
p data[4]                 # => nil: нет подшаблона с индексом 4, а ! не подшаблон
p data[1,2]               # => ["Ruby", "\t"]: кстати [1,3] == [1..3]
p data[1..3]              # => ["Ruby", "\t", "rocks"]
p data.values_at(1,3)     # => ["Ruby", "rocks"]: только выборочные индексы
p data.captures           # => ["Ruby", "\t", "rocks"]: только подшаблоны
p Regexp.last_match       # => #<MatchData "Ruby\trocks!" 1:"Ruby" 2:"\t" 3:"rocks"
p Regexp.last_match(3)    # => "rocks": то же самое и с .last_match[3]

# Начальные и конечные позиции(строковые) соответствий
# "Ruby\trocks!" = /(Ruby|Perl)(\s+)(rocks|sucks)!/
p data.begin(0)           # => 0: начальный индекс всего соответствия
p data.begin(2)           # => 4: начальный индекс соответствия второму шаблону
p data.end(2)             # => 5: конечный индекс соответствия второму шаблону
p data.offset(3)          # => [5, 10]: начало и конец соответствия третьему шаблону