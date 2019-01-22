# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add 3 positions.

Position.create(name: 'Presidente', desc: 'Presidente del Club')
Position.create(name: 'Vicepresidente', desc: 'Vicepresidente del Club')
Position.create(name: 'Miembro', desc: 'Miembro regular del Club')
# Add 2 events

Event.create(
             name: 'Datajam 2019',
             desc: 'Evento de Ciencia de datos mas grande de ESPOL',
             due_time: DateTime.parse('2019-08-23 17:00:00')
             )
Event.create(
             name: 'Datajam 2018',
             desc: 'Primer concurso de ciencia de datos patrocinado por BroadNet',
             due_time: DateTime.parse('2018-11-30 17:30:00')
             )


