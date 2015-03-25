require_relative "./ALDS1_1_A"
describe Array, "when 5 2 4 6 1 3" do
  before do
    @input = "6\n5 2 4 6 1 3"
  end

  it "should output" do
    expect { insertionSort(@input)}.to output("5 2 4 6 1 3\n2 5 4 6 1 3\n2 4 5 6 1 3\n2 4 5 6 1 3\n1 2 4 5 6 3\n1 2 3 4 5 6").to_stdout
    #expect { print "5 2 4 6 1 3\n2 5 4 6 1 3\n2 4 5 6 1 3\n2 4 5 6 1 3\n1 2 4 5 6 3\n1 2 3 4 5 6"}.to insertionSort(@input).to_stdout
  end
end
