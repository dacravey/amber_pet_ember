require 'rails_helper'

describe Pet do
  it { should belong_to :user}
  it { should belong_to :specie}
  it { should have_many :findings}
  it { should have_many :losts}
end
