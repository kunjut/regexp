f = File.open "2.txt", 'r'
fw = File.open "2_.txt", 'w'
while (line = f.gets)
  ll = line.gsub(/\.\d{2}/, '(\0)')
  fw.write ll
end
fw.close
f.close
