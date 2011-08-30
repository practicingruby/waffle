module Waffle
  class Record
    def initialize(values, attribute_names)
      @data = Hash[attribute_names.zip(values)]
    end

    def [](key)
      @data[key]
    end

    def matches?(conditions)
      conditions.all? { |k,v| self[k] == v }
    end
  end
end
