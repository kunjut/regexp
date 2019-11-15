text = "The cat goes catatonic when you put in catapult"

pattern = /cat/
p text.gsub pattern, "(cat)" # "The (cat) goes (cat)atonic when you put in (cat)apult"

pattern = /cat\b/
p text.gsub pattern, "(cat)" # "The (cat) goes catatonic when you put in catapult"
