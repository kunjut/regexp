pattern = /Ruby/
pattern2 = /(\w+ )+/
text = "in system Ruby 2.4.4 installed"

if data = pattern.match(text)
  p data.pre_match
end

pattern2.match(text) do |item|
  p item.to_s
end