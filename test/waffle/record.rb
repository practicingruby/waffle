require_relative "../helper"

describe "Waffle::Record" do
  it "should allow access to attributes by name" do
    data       = ["6/14/2011", "2", "36.00", "-1.69", "34.31"]
    names      = ["Date", "Payments Received", "Amount Received", 
                  "Payment Fees", "Net Amount"] 

    record = Waffle::Record.new(data, names)

    record["Payments Received"].must_equal("2")
    record["Payment Fees"].must_equal("-1.69")
  end

  it "must support conditional matching" do
    data       = ["6/14/2011", "2", "36.00", "-1.69", "34.31"]
    names      = ["Date", "Payments Received", "Amount Received", 
                  "Payment Fees", "Net Amount"] 

    record = Waffle::Record.new(data, names)

    record.matches?("Date" => "6/14/2011").must_equal(true)
    record.matches?("Date" => "6/12/2011").must_equal(false)
  end
end
