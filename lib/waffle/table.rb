module Waffle
  class Table
    def initialize(data, attribute_names)
      @data = data.map { |e| Waffle::Record.new(e, attribute_names) }
    end

    def where(conditions)
      @data.select { |row| row.matches?(conditions) }
    end
  end
end
