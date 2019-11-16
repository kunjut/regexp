text = "100
        2000
        500000
        4000000
        2000000
        1000000
        8000
        9000000"
text.gsub! /0{6}/, " million"
text.gsub! /^\s+/, ""
print text
