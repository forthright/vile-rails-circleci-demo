require_relative "./../test_helper"

describe Foobar do
  it "is true" do
    expect(Foobar.new.foo).to eql "a"
  end
end
