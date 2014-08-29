require 'rails_helper'

describe HashJoin do
  it { should belong_to :tag }
  it { should belong_to :recipe }
end
