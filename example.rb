require "json"

data = JSON.parse(File.read("sales.json"))

# How many payments were received on 6/14/2011?

=begin 
row = data.find { |x| x[0] == "6/14/2011" }
p row[1]
=end

table = Waffle::Table.new(data)
row   = table.where("Date" => "6/14/2011").first

p row["Payments Received"]
