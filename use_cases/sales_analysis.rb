# Data Source: sales.json
# Question: How many payments were received on 6/14/2011? 
#
# Required features: Conditional search, access fields by name.
#
# Possibly useful features (not yet implemented): 
#   * Convert fields to a predetermined type (i.e. make Payments Received a numeric field)
#   * Have an easy way to search for the first matching record
#   * Have an easy way to convert a JSON array-of-arrays to a Table
#
require "json"
require_relative "../lib/waffle"

data_dir = "#{File.dirname(__FILE__)}/data"
names, *data = JSON.parse(File.read("#{data_dir}/sales.json"))

table = Waffle::Table.new(data, names)
row   = table.where("Date" => "6/14/2011").first

p row["Payments Received"]
