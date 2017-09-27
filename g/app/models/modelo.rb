class Modelo < ApplicationRecord
	has_many :telefonos
	belongs_to :marca
end
