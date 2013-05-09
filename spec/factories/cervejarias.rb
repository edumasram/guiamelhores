# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cervejaria do
    nome "MyString"
    descricao "MyText"
    site "MyString"
    pais_id 1
    grupocervejaria_id 1
  end
end
