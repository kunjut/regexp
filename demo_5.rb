# именованные захваты
pattern = /(?<lang>Ruby|Perl) (?<ver>\d(\.\d)+) (?<review>rocks|sucks)!/
if pattern =~ "Ruby 2.4.4 rocks!"
  p $~[:lang]           # => "Ruby"
  p $~[:ver]            # => "2.4.4"
  p $~["review"]        # => "rocks"
  p $~.offset(:ver)   # => [5, 10]: начальное и конечное смещение номера версии
  p $~.offset(2)      # => [5, 10]: или можно было так обратиться
end

# имена захватываемых групп
p pattern.names         # => ["lang", "ver", "review"]

# отображение имен групп на номера групп
p pattern.named_captures  # => {"lang"=>[1], "ver"=>[2], "review"=>[3]}