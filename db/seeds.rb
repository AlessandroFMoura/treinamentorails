# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Cargo.create([{ funcao: "Administrador", sigla: "Adm" }, { funcao: "Secretaria", sigla: "Sec" }, { funcao: "Professor", sigla: "Prof" }])


# user. = "Administrador"
# user.email = "admin"
# # user.password = "admin"
# # user.password_confirmation = "admin"
# user.cargo_id = 1
# user.save