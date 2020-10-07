# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8

@restaurants = Restaurant.create!([
  {
    name: 'ピザ屋・ロクサン',
    address: '東京都世田谷区三宿',
    phone: '0311112222'
  },
  {
    name: 'ピザ屋・ロクヨン',
    address: '東京都世田谷区上馬',
    phone: '0355552222'
  }
])

# ロクサン
Menu.create!([{
  restaurant_id: @restaurants[0].id,
  name: 'マルゲリータ',
  price: 1200
},{
  restaurant_id: @restaurants[0].id,
  name: 'エビWガーリック',
  price: 1200
},{
  restaurant_id: @restaurants[0].id,
  name: 'クアトロフォルマッジ',
  price: 1200
}])

#ロクヨン
Menu.create!([{
  restaurant_id: @restaurants[1].id,
  name: 'マルゲリータ',
  price: 1200
},{
  restaurant_id: @restaurants[1].id,
  name: 'デラックスピザ',
  price: 1200
},{
  restaurant_id: @restaurants[1].id,
  name: 'シーフードピザ',
  price: 1200
}])
