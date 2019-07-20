require 'rails_helper'


RSpec.describe Lottery, type: :model do
  it {should have_many(:numbers).dependent(:destroy)} 
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:date)}
end
