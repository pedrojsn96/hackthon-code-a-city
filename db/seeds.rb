# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


AdminUser.create!(email: 'pjsn@cin.ufpe.br', password: '12341234', password_confirmation: '12341234')
AdminUser.create!(email: 'samuelmataraso@gmail.com', password: '12341234', password_confirmation: '12341234')
AdminUser.create!(email: 'hugo@jambotech.com.br', password: '12341234', password_confirmation: '12341234')Course.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?