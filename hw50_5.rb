fo = File.open "5.txt", 'r'
fw = File.open "5_.txt", 'w'

x = fo.read.gsub(/\n+/, "\n")

fw.write x
