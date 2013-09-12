require 'input'

describe Input do
  it "should take a path as a string" do
    input = Input.new("./input.txt")
    expect(input.file_path).to eq("./input.txt")
  end

  it "when we call a method read_file_and_return_keyword" do
    input = Input.new("./input.txt")
    expect(input.read_file_and_return_keyword).to eq(input.keyword)
  end

  it "has a method find_natural_word that takes keyword argument" do
    input = Input.new("./input.txt")
    input.read_file_and_return_keyword
    action = input.find_natural_word
    expect(action).to eq("GARDEN")
  end
end