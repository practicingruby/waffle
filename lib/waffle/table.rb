module Waffle
  class Table
    def initialize(data, attribute_names)
      @data             = data.map { |e| record(e, attribute_names) }
      @attribute_names  = attribute_names
    end

    def where(conditions)
      @data.select do |row|
        conditions.all? { |k,v| row[k] == v }
      end
    end

    private

    def record(row_data, attribute_names)
      Waffle::Record.new(row_data, attribute_names)
    end
  end
end
