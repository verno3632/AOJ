require_relative "./ss"

describe SS do
  it "sample 1" do
    @ss = SS.new
    allow(@ss).to receive(:gets) {"6"}
    allow(@ss).to receive(:gets) {"5 6 4 2 1 3"}
    expect(@ss).to receive(:puts).with("1 2 3 4 5 6")
    expect(@ss).to receive(:puts).with("4")
    @ss.output
  end

  it "sample 2" do
    @ss = SS.new
    allow(@ss).to receive(:gets) {"6"}
    allow(@ss).to receive(:gets) {"5 2 4 6 1 3"}
    expect(@ss).to receive(:puts).with("1 2 3 4 5 6")
    expect(@ss).to receive(:puts).with("3")
    @ss.output
  end
end
