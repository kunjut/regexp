text = "I said \"Noo!!!!!!\", she said \"nooo!\". Her mother said \"Nooooo!\", I replied \"No. Okay, nooooo means no\"."
pattern = /no+!*/i
text.gsub! pattern, "no"
print text # I said "no", she said "no". Her mother said "no", I replied "no. Okay, no means no".
