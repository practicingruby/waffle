require_relative "../helper"

describe "Waffle::Record" do
  it "should allow access to attributes by name" do
    data       = ["6/14/2011", "2", "36.00", "-1.69", "34.31"]
    names      = ["Date", "Payments Received", "Amount Received", 
                  "Payment Fees", "Net Amount"] 

    record = Waffle::Record.new(data, names)

    assert_equal     "2", record["Payments Received"]
    assert_equal "-1.69", record["Payment Fees"]
  end
end
