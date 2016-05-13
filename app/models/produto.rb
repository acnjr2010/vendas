class Produto < ActiveRecord::Base
  validates :nome, :preco_unitario, :quantidade, :valor_gasto, :valor_unitario, :valor_venda_total, :mercadoria_vendida, :mercadoria_estoque, :lucro,
            :lucro_percentual, :em_estoque, :vendido, presence: true
end
