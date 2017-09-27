class Telefono < ApplicationRecord
	belongs_to :modelo
	has_many :pedidos
	belongs_to :tipo
end
