require 'rails_helper'

describe User do
  it { should have_many :pets}
  it { should validate_presence_of :username}
end
