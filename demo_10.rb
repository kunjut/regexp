re = /(?<quote>['"])(?<body>[^'"]*)\k<quote>/
p "This 'citati'".gsub(re, '\k<body>')
