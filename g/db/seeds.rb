# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Marca.create(nombre: 'Samsung')
Marca.create(nombre: 'HTC')
Marca.create(nombre: 'NOKIA')
Marca.create(nombre: 'Alcatel')

Modelo.create(marca_id: '1', nombre: 'S6')
Modelo.create(marca_id: '1', nombre: 'S7')
Modelo.create(marca_id: '4', nombre: 'OT 7040 Pop C7')


Tipo.create(nombre: 'Smartphone')

Telefono.create(tipo_id: '1', modelo_id: '1')


FormaPago.create(nombre: 'Giros tigo')


Operadora.create(nombre: 'Personal', costo: 200000)
Operadora.create(nombre: 'Tigo', costo: 220000)
Operadora.create(nombre: 'Claro', costo: 250000)
