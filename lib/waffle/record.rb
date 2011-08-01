module Waffle
  class Record
    def initialize(data, attribute_names)
      @data            = data
      @attribute_names = attribute_names
    end

    def [](key)
      @data[@attribute_names.index(key)]
    end
  end
end
