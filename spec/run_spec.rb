require_relative '../lib/run'

RSpec.describe Run, "#tokens" do
  it "returns the instance's list of tokens" do
    run = Run.new([:RED1, :RED2, :RED3])
    expect(run.tokens).to eq [:RED1, :RED2, :RED3]
  end
end

RSpec.describe Run, "#change" do
  context "with tokens to add" do
    it "adds the tokens to the instance's list of tokens" do
      run = Run.new([:RED1, :RED2, :RED3])
      run.change([:RED4], [])
      expect(run.tokens).to eq [:RED1, :RED2, :RED3, :RED4]
    end
  end

  context "with tokens to remove" do
    it "removes the tokens from the instance's list of tokens" do
      run = Run.new([:RED1, :RED2, :RED3, :RED4])
      run.change([], [:RED4])
      expect(run.tokens).to eq [:RED1, :RED2, :RED3]
    end
  end
end
