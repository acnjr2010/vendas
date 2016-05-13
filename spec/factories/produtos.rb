FactoryGirl.define do
  factory :produto do
    nome {Faker::Name.name}
    preco_unitario { Faker::Number.number(2) }
    quantidade { Faker:: Number.number(2) }
    valor_gasto { Faker::Number.decimal(2) }
    valor_unitario { Faker::Number.decimal(2) }
    valor_venda_total { Faker::Number.decimal(2) }
    mercadoria_vendida { Faker:: Number.number(2) }
    mercadoria_estoque { Faker:: Number.number(2) }
    lucro { Faker::Number.decimal(2) }
    lucro_percentual { Faker:: Number.number(2) }
    em_estoque { Faker:: Number.number(2) }
    vendido { Faker:: Number.number(2) }
  end
end
