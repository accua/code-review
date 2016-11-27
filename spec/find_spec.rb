require("rspec")
require("find")

describe("String#find") do
  it("Will compare two string inputs and let the user know if the word they entered matches the word they specified by showing them a counter.") do
    expect("cat".find("cat")).to(eq(1))
  end
  it("Will compare the input to the argument to see if they are equal, and if they are, update the counter to reflect how many times they're equal.") do
    expect("cat cat cat".find("cat")).to(eq(3))
  end
  it("Will count the word even if it ends a sentence.") do
    expect("cat cat cat.".find("cat")).to(eq(3))
  end
  it("Will count the word even if it is inside quotes") do
    expect('cat! "cat" cat. cat?'.find("cat")).to(eq(4))
  end
end
