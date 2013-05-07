# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cerveja do
    nome "MyString"
    descricao "MyText"
    cervejaria_id 1
    estilocerveja_id 1
    pais_id 1
    importadora_id 1
    graducao "9.99"
    temperatura "MyString"
    site "MyString"
  end
end
