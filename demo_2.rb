pattern = /Ruby?/i      # ищем rub или ruby, без учета регистра
p pattern =~ "backrub"  # 4
p pattern =~ "rub ruby" # 0
p pattern =~ "r"        # nil