require "compare"

describe "#comp" do
  it "it compares if element of array b is a square of element of array a" do
    expect(compare([2], [4])).to eq(true)
    expect(compare([1], [4])).to eq(false)
  end

  it "compares if elements in array b are equa to elements in array a squares" do
    expect(compare([1, 2], [1, 4])).to eq(true)
    expect(compare([2, 2], [1, 4])).to eq(false)
  end
end
