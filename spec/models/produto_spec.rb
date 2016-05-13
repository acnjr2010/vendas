require 'rails_helper'

RSpec.describe Produto, type: :model do
  it { is_expected.to validate_presence_of(:nome) }
  it { is_expected.to validate_presence_of(:preco_unitario) }
  it { is_expected.to validate_presence_of(:quantidade) }
  it { is_expected.to validate_presence_of(:valor_gasto) }
  it { is_expected.to validate_presence_of(:valor_unitario) }
  it { is_expected.to validate_presence_of(:valor_venda_total) }
  it { is_expected.to validate_presence_of(:mercadoria_vendida) }
  it { is_expected.to validate_presence_of(:mercadoria_estoque) }
  it { is_expected.to validate_presence_of(:lucro) }
  it { is_expected.to validate_presence_of(:lucro_percentual) }
  it { is_expected.to validate_presence_of(:em_estoque) }
  it { is_expected.to validate_presence_of(:vendido) }
end
