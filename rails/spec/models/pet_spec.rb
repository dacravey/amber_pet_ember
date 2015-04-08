require 'rails_helper'

describe Pet do
  it { should validate_presence_of :name}
  it { should validate_presence_of :breed}
  it { should validate_presence_of :description}
  it { should belong_to :user}
  it { should belong_to :specie}
end
