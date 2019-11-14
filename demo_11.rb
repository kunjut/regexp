text = "RUBY Java perl PyThOn"          # Изменяемый текст
pattern = /ruby|java|perl|python/i      # Шаблон соответствия
text.gsub!(pattern) {|p| p.capitalize}  # Исправляющая капитализация
p text                                  # "Ruby Java Perl Python"
