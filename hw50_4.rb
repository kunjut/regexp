fo = File.open "4.txt", 'r'
fw = File.open "4_.txt", 'w'

x = fo.read.gsub(/\n\n/, "\n")

fw.write x
