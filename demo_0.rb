while true
  print "Вы уверены? [y/n]: "
  response = gets
  
  case response
  when /^[yY]/; puts true
  when /^[nN]/; puts false; break
  end

  # if response =~ /^[yY]/
  #   puts true
  # elsif response =~ /^[nN]/
  #   puts false
  #   break
  # end
end