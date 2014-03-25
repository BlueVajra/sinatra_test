require 'item_repository'

describe ItemRepository do
  it "adds items" do

    ir = ItemRepository.new
    ir.add("soup")

    actual = ir.items
    expected = ["soup"]
    expect(actual).to eq expected

  end
  it "deletes items" do
    ir = ItemRepository.new
    ir.add("soup")
    ir.add("cake")
    ir.add("beer")
    ir.delete("beer")
    actual = ir.items
    expected = ["soup", "cake"]
    expect(actual).to eq expected
  end

  it "edits name of item" do
    ir = ItemRepository.new
    ir.add("soup")
    ir.add("cake")
    ir.add("beer")
    ir.edit("beer", "good beer")
    actual = ir.items
    expected = ["soup", "cake", "good beer"]
    expect(actual).to eq expected
  end
end