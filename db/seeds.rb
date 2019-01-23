# frozen_string_literal: true

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

event1 = Event.create(
  name: 'Datajam 2019',
  desc: 'Evento de Ciencia de datos mas grande de ESPOL',
  due_time: DateTime.parse('2019-08-23 17:00:00')
)
event2 = Event.create(
  name: 'Datajam 2018',
  desc: 'Primer concurso de ciencia de datos patrocinado por BroadNet',
  due_time: DateTime.parse('2018-11-30 17:30:00')
)

# Add 3 members
#
piero = Member.create(
  name: 'Piero',
  last_name: 'Ulloa',
  dob: Date.parse('1998-03-23'),
  date_ingreso: Date.parse('2018-05-01')
)

vivi = Member.create(
  name: 'Viviana',
  last_name: 'Laurido',
  dob: Date.parse('1997-07-08'),
  date_ingreso: Date.parse('2017-04-01')
)

oswaldo = Member.create(
  name: 'Oswaldo',
  last_name: 'Aguilar',
  dob: Date.parse('1996-12-20'),
  date_ingreso: Date.parse('2016-08-21')
)

# Add posts

post1 = Post.create(
  title: 'Prepárate para el Datajam 2018',
  content: 'Datajam 2018 es el concurso de ciencia de datos más innovador en ecuador!',
  member_id: piero
)

post2 = Post.create(
  title: 'Ganadores del Datajam 2018',
  content: 'Los ganadores del datajam 2018 fueron los siguientes!',
  member_id: vivi
)

post3 = Post.create(
  title: 'Anunciado auspiciante para el Datajam 2019!',
  content: 'El auspiciante del datajam 2019 es una empresa de apuestas en línea',
  member_id: oswaldo
)

# Add comments to post!

Comment.create(
  title: 'Felicitaciones!',
  content: 'Felicitaciones por conseguir '\
'un nuevo auspiciante para el evento! Son lo máximo!',
  author: vivi.name,
  member_id: vivi,
  post_id: post3
)


# Add tasks to the event!

bocaditos = Task.create(
  name: 'Reunión con auspiciante para bocaditos',
  desc: 'Puntos a discutir: \n '\
    '- ¿Cómo será la marca del auspiciante mostrada en el evento?\n' \
    '- ¿Qué productos nos van a proporcionar para el apoyo? \n'\
    '- Etc...',
  deadline: DateTime.parse('2018-09-11 13:30:00'),
  completed: false,
  event_id: event2
)

reserva_aula = Task.create(
  name: 'Reservar la sala XYZ',
  desc: 'Se necesita que alguien reserve la sala XYZ para capacitar a los estudiantes'\
  'en el uso de las herramientas de prototipado',
  deadline: DateTime.parse('2018-09-13 00:00:00'),
  completed: false,
  event_id: event1
)

# Add task asignees

Assigment.create(
  member_id: vivi,
  task_id: bocaditos
)

Assignment.create(
  member_id: piero,
  task_id: bocaditos
)

Assigment.create(
  member_id: oswaldo,
  task_id: reserva_aula
)