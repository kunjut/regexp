# еще варианты проверки поиска соответствия через регулярное выражение
p "ruby123"[/\d+/]                  # => "123"

# если после выражения через , идет целове число, то возвращается
# соответствуюший элемент объекта MatchData
p "ruby123"[/([a-z]+)(\d+)/,1]      # => "ruby"
p "ruby123"[/([a-z]+)(\d+)/,2]      # => "123"

# методы slice и slice!
str = "ruby321"
p str.slice(/\d+/)                  # => "321", но str не изменен
p str.slice!(/\d+/)                 # => "ruby", и оно удалено из str

# метод split
s = "one, two, three"
p s.split                           # => ["one,", "two,", "three"]: по-умолчанию пробел разделитель
p s.split(", ")              # => ["one", "two", "three"]
p s.split(/\s*,\s*/)         # => ["one", "two", "three"]

# метод index
#       012345678910
text = "hello world"
pattern = /l/
p first = text.index(pattern)       # => 2: первое соответствие со 2-го символа
p n = Regexp.last_match.end(0)      # => 3: конечная позиция соответствия
p repeat = text.index(pattern, n)

p back = text.rindex(pattern)       # => 9: первое соответствие, с конца
p Regexp.last_match.end(0)          # => 10: конечная позиция соответствия