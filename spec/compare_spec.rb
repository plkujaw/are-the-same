require "compare"

describe "#comp" do
  it "it compares if element of array b is a square of element of array a" do
    expect(compare([2], [4])).to eq(true)
    expect(compare([1], [4])).to eq(false)
  end

  it "compares if elements in array b are equal to elements in array a squares" do
    expect(compare([1, 2], [1, 4])).to eq(true)
    expect(compare([2, 2], [1, 4])).to eq(false)
  end
  it "returns false if any array is empty" do
    expect(compare([1], [])).to eq(false)
    expect(compare([1, 4, 7], [])).to eq(false)
  end


end
