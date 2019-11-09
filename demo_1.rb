word1 = 'AutoMechanic'
word2 = 'Automobile'
word3 = 'Architecture'
word4 = 'Bobcats'

def check_strings_via_regexp (string1, string2)
  if string1 =~ /^#{string2}/
    puts "Match it's find"
  else
    puts 'No match'
  end
end

check_strings_via_regexp(word1, "Auto")
check_strings_via_regexp(word2, "Auto")