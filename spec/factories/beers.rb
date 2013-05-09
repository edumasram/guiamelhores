# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :beer do
    name "MyString"
    description "MyText"
    brewery_id 1
    beerstyle_id 1
    country_id 1
    grad "9.99"
    temp "MyString"
    site "MyString"
  end
end
