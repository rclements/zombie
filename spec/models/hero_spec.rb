require 'spec_helper'

describe Hero do
  it "should perform validations" do
    it {should_belong_to :world}
  end
end
