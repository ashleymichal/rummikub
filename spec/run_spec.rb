require_relative '../lib/run'

describe Run, '#id' do
  it "returns an auto-incrementing id" do
    run1 = Run.new([:token])
    run2 = Run.new([:token])
    expect(run2.id).to eq (run1.id + 1)
  end
end

describe Run, '#tokens' do
  it "returns the instance's list of tokens" do
    run = Run.new([:RED1, :RED2, :RED3])
    expect(run.tokens).to eq [:RED1, :RED2, :RED3]
  end
end

describe Run, '#add' do
  it "adds given tokens to the instance's list of tokens" do
    run = Run.new([:RED1, :RED2, :RED3])
    expect(run.add([:RED4])).to eq [:RED1, :RED2, :RED3, :RED4]
    expect(run.tokens).to eq [:RED1, :RED2, :RED3, :RED4]
  end
end

describe Run, '#remove' do
  it "removes given tokens from the instance's list of tokens" do
    run = Run.new([:RED1, :RED2, :RED3, :RED4])
    expect(run.remove([:RED4])).to eq [:RED1, :RED2, :RED3]
    expect(run.tokens).to eq [:RED1, :RED2, :RED3]
  end
end

