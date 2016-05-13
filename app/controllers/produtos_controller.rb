class ProdutosController < ApplicationController
  before_action :find_produtos, only: [:show, :edit, :update, :destroy]

  def index
    @produtos = Produto.all.order('created_at DESC')
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produtos_params)

    if @produto.save
      redirect_to @produto
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @produto.update(produtos_params)
      redirect_to @produto
    else
      render 'edit'
    end
  end

  def destroy
    @produto.destroy
    redirect_to root_path
  end

  private

  def produtos_params
    params.require(:produto).permit(:nome, :preco_unitario, :quantidade,
    :valor_gasto, :valor_unitario, :valor_venda_total, :mercadoria_vendida,
    :mercadoria_estoque, :lucro, :lucro_percentual, :em_estoque, :vendido)
  end

  def find_produtos
    @produto = Produto.find(params[:id])
  end
end
