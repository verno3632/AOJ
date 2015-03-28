require_relative "./bs"

describe BS do
  it "sample 1" do
    @ss = BS.new
    allow(@ss).to receive(:gets) {"5"}
    allow(@ss).to receive(:gets) {"5 3 2 4 1"}
    expect(@ss).to receive(:puts).with("1 2 3 4 5")
    expect(@ss).to receive(:puts).with("8")
    @ss.output
  end

  it "sample 2" do
    @ss = BS.new
    allow(@ss).to receive(:gets) {"6"}
    allow(@ss).to receive(:gets) {"5 2 4 6 1 3"}
    expect(@ss).to receive(:puts).with("1 2 3 4 5 6")
    expect(@ss).to receive(:puts).with("9")
    @ss.output
  end
end
