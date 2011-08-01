require "json"

require "minitest/spec"
require "minitest/autorun"

require_relative "../lib/waffle"

module MiniTest
  class Spec
    def json_fixture(filename)
      test_dir = File.dirname(__FILE__)
      JSON.parse(File.read("#{test_dir}/fixtures/#{filename}.json"))
    end
  end
end
