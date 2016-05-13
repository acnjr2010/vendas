class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :preco_unitario
      t.integer :quantidade
      t.decimal :valor_gasto
      t.decimal :valor_unitario
      t.decimal :valor_venda_total
      t.integer :mercadoria_vendida
      t.integer :mercadoria_estoque
      t.decimal :lucro
      t.integer :lucro_percentual
      t.integer :em_estoque
      t.integer :vendido

      t.timestamps null: false
    end
  end
end
