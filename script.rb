require 'pg'

c = PG.connect( dbname: 'moneyplus_development' )

c.exec("SELECT * FROM articles") do |result|
  result.each { |row| p row }
end
