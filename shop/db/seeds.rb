# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.destroy_all
User.destroy_all

Item.create([{name: 'Ipad', price: 50, description: 'ipad is dope', img_url: ""}])
Item.create([{name: 'Louis Vuttion bag', price: 10, description: 'what a deal', img_url: ''}])
Item.create([{name: 'Mac Book pro', price: 100, description: 'macbook pro is dope', img_url: '' }])
Item.create([{name: 'Mac Book ', price: 100, description: 'macbook is dope', img_url: '' }])
Item.create([{name: 'Mac Book air', price: 100, description: 'macbook air is dope', img_url: '' }])
Item.create([{name: 'Pop Eyes chicken', price: 15, description: 'Popeyes Chicken is fucking awesome', img_url: '' }])
Item.create([{name: 'Diamond Ring', price: 5, description: 'Bling', img_url: '' }])

User.create([{username: "keven", password_digest: "keven", cc: "keven"}])
