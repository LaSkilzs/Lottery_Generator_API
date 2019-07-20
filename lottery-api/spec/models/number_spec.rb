require 'rails_helper'


RSpec.describe Number, type: :model do
  it {should validate_presence_of(:pick)}
  it {should validate_presence_of(:lottery_id)}
end
