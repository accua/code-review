require("rspec")
require("find")

describe("String#find") do
  it("Will compare the input to the argument to see if they are equal, and if they are, update the counter to reflect how many times they're equal.") do
    expect("cat cat cat".find("cat")).to(eq(3))
  end
end
