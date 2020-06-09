require "compare"

describe "#compare" do
  it "it compares if element of array b is a square of element of array a" do
    expect(compare([2], [4])).to eq(true)
    expect(compare([1], [4])).to eq(false)
  end

  it "compares if elements in array b are equal to elements in array a squared" do
    expect(compare([1, 2], [1, 4])).to eq(true)
    expect(compare([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361])).to eq(true)
    expect(compare([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])).to eq(true)
    expect(compare([121, 144, 19, 161, 19, 144, 19, 11], [132, 14641, 20736, 361, 25921, 361, 20736, 361])).to eq(false)
    expect(compare([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 36100, 25921, 361, 20736, 361])).to eq(false)
    expect(compare([2, 2], [1, 4])).to eq(false)
  end

  it "returns false if any array is empty" do
    expect(compare([1], [])).to eq(true)
    expect(compare([1, 4, 7], [])).to eq(true)
  end

  it "returns false if both arrays are empty" do
    expect(compare([], [])).to eq(true)
  end

  it "returns false if any of arrays is nil" do
    expect(compare(nil, [1, 5])).to eq(false)
  end

  it "returns false if one of arrays is nil and other empty" do
    expect(compare(nil, [])).to eq(false)
  end

  it "returns false if both arrays are nil" do
    expect(compare(nil, nil)).to eq(false)
  end
end
