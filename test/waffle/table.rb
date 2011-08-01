require_relative "../helper"

describe "Waffle::Table" do
  it "should be able to search for matching records" do
    names, *data  = json_fixture("sales")

    table = Waffle::Table.new(data, names)
    expected_payments = "2"
    
    match = table.where("Date" => "6/14/2011").first
    assert_equal expected_payments, match["Payments Received"]
  end
end
