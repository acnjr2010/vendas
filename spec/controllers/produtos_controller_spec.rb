require 'rails_helper'

RSpec.describe ProdutosController, type: :controller do
  describe "GET index" do
    let(:prod) { create_list(:produto, 5) }

    before(:each) do
      get :index
    end

    it "assigns all products as @products" do
      expect(assigns(:produtos)).to eq(prod)
    end

  end
end
