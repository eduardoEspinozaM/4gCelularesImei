class Pedido < ApplicationRecord
	belongs_to :operadora
	belongs_to :telefono
end
