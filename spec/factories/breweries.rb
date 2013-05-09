# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :brewery do
    name "MyString"
    site "MyString"
    country_id 1
    brewerygroup_id 1
  end
end
