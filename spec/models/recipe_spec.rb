require 'rails_helper'

describe Recipe do
  it { should belong_to :contributor }
  it { should have_many(:tags).through (:hash_joins) }
end
