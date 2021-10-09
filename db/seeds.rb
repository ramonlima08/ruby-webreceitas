# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create!([
    {
        name:"Salada Light",
        stuff:"1 kg de carne",
        calories: 110,
        kind: "Carnes",
        prepare_mode: "Mode de Preparo simples",
        portion: "5",
        duration: "2021-01-01 00:40:00",
        cost: 50.00,
        poster: "salda.jpg",
    },
    {
        name:"Salada Light 2",
        stuff:"1 kg de carne 2",
        calories: 120,
        kind: "Carnes",
        prepare_mode: "Mode de Preparo simples 2",
        portion: "10",
        duration: "2021-01-01 00:50:00",
        cost: 70.00,
        poster: "salda2.jpg",
    }
])