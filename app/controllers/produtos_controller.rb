class ProdutosController < ApplicationController
  before_action :find_produtos, only: [:show, :edit, :update, :destroy]

  def index
    @produtos = Produto.all.order('created_at DESC')
  end

  def new
    @produto = Produto.new
  end

  def create(produtos_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def produtos_params
    produto.params(:produto).require(:nome, :preco_unitario, :quantidade,
    :valor_gasto, :valor_unitario, :valor_venda_total, :mercadoria_vendida,
    :mercadoria_estoque, :lucro, :lucro_percentual, :em_estoque, :vendido)
  end

  def find_produtos
    @produto = Produto.find(params[:id])
  end
end
