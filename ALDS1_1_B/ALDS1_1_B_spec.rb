require_relative "./ALDS1_1_B"
describe GCD do
  it "54 20 should output 2" do
    @gcd = GCD.new
    allow(@gcd).to receive(:gets) {"54 20\n"}
    expect(@gcd).to receive(:puts).with(2)
    @gcd.output
  end

  it "147 105 should output 21" do
    @gcd = GCD.new
    allow(@gcd).to receive(:gets) {"147 105\n"}
    expect(@gcd).to receive(:puts).with(21)
    @gcd.output
  end
end
