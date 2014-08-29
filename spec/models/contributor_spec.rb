require 'rails_helper'

describe Contributor do
  it { should have_many :recipes }
end
