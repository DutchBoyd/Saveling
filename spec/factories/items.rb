# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    name "Hammer"
    description "This is my hammer. There are many like it, but this one is mine."
    price_cents 1000
    price_currency 'USD'
    owner_id 1
    borrower_id 1
  end
end
