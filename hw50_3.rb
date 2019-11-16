text = "hi world, it's hip to have big thighs"
pattern = /\b/
p text.gsub(pattern, "_") # "_hi_ _world_, _it_'_s_ _hip_ _to_ _have_ _big_ _thighs_"
