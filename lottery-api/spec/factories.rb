FactoryBot.define do
  
  factory :lottery do
    name {3}
    "date" "01/31/2019"
  end

  factory :number do
    pick {37}
    Lottery
  end
end