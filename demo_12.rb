text = "Ruby \"Java\" perl \"PyThOn\""
pattern = /(['"])([^\1]*)\1/
text.gsub!(pattern) do
  if $1 == '"'
    "'#$2'"
  else
    "\"#$2\""
  end
end
p text  # "Ruby 'Java\" perl \"PyThOn'"