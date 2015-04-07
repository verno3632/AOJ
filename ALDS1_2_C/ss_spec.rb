require_relative "./ss"
describe SS do
  it "sample 1" do
    @ss = SS.new
    allow(@ss).to receive(:gets) {"5"}
    allow(@ss).to receive(:gets) {"H4 C9 S4 D2 C3"}
    expect(@ss).to receive(:puts).with("D2 C3 H4 S4 C9")
    expect(@ss).to receive(:puts).with("Stable")
    expect(@ss).to receive(:puts).with("D2 C3 S4 H4 C9")
    expect(@ss).to receive(:puts).with("Not stable")
    @ss.output
  end

  it "sample 2" do
    @ss = SS.new
    allow(@ss).to receive(:gets) {"2"}
    allow(@ss).to receive(:gets) {"S1 H1"}
    expect(@ss).to receive(:puts).with("S1 H1")
    expect(@ss).to receive(:puts).with("Stable")
    expect(@ss).to receive(:puts).with("S1 H1")
    expect(@ss).to receive(:puts).with("Stable")
    @ss.output
  end
end
