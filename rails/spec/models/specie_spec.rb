require 'rails_helper'

describe Specie do
  it { should validate_presence_of :specie}
  it { should have_many :pets }
end
