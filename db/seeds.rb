# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# coding: utf-8


# Restaurant情報記載
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
  },
  {
    name: 'ワイン居酒屋・赤坂ワイナリー',
    address: '東京都港区赤坂',
    phone: '0311113333'
  },
  {
    name: '居酒屋・ぎょーさん',
    address: '東京都渋谷区宇田川町',
    phone: '0344441111'
  },#id = 4
  {
    name: 'カフェ・50s',
    address: '東京都渋谷区神南',
    phone: '0311221122'
  },
  {
    name: '居酒屋・ロクサブロウ',
    address: '東京都渋谷区神南',
    phone: '0355551122'
  },
  {
    name: '中華・四国志',
    address: '東京都渋谷区神南',
    phone: '0355542222'
  },
  {
    name: '焼き肉・源太郎',
    address: '東京都渋谷区道玄坂',
    phone: '0355552222'
  },#id = 8
  {
    name: '焼き肉・キングダム',
    address: '東京都渋谷区桜ヶ丘',
    phone: '0343432222'
  },
  {
    name: '居酒屋・猫泥棒',
    address: '東京都渋谷区桜ヶ丘',
    phone: '0367852222'
  },
  {
    name: 'カレー・インディ',
    address: '東京都渋谷区桜ヶ丘',
    phone: '0359902222'
  },
  {
    name: '居酒屋・315',
    address: '東京都渋谷区桜ヶ丘',
    phone: '0355009222'
  },# id = 12
  {
    name: 'カフェ・ラパン',
    address: '東京都渋谷区渋谷',
    phone: '0355554434'
  },
  {
    name: 'イタリアン・白い海岸',
    address: '東京都渋谷区渋谷',
    phone: '0355980222'
  },
  {
    name: 'イタリアン・ロストーロ',
    address: '東京都渋谷区渋谷',
    phone: '03555524232'
  },
  {
    name: 'ピザ屋・デ・ロッソ',
    address: '東京都渋谷区渋谷',
    phone: '0355999872'
  },# id = 16
  {
    name: 'ラーメン・海道',
    address: '東京都渋谷区渋谷',
    phone: '0355552222'
  },
  {
    name: 'ラーメン・豚骨道場',
    address: '東京都渋谷区宇田川町',
    phone: '0355992222'
  },
  {
    name: '居酒屋・魚介バル',
    address: '東京都世田谷区上馬',
    phone: '0352322222'
  },
  {
    name: '居酒屋・隠れ家',
    address: '東京都渋谷区鶯谷町',
    phone: '0355665522'
  }, # id = 20
  {
    name: '居酒屋・食い倒れ',
    address: '東京都渋谷区鶯谷町',
    phone: '0355908722'
  }
])

# ロクサン
Menu.create!([
  {
    restaurant_id: @restaurants[0].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[0].id,
    name: 'エビWガーリック',
    price: 1200
  },{
    restaurant_id: @restaurants[0].id,
    name: 'ブルーチーズピザ',
    price: 1200
  }
])

# ロクヨン
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

# ワイン居酒屋・赤坂ワイナリー
Menu.create!([
  {
    restaurant_id: @restaurants[2].id,
    name: 'トマトスパゲティ',
    price: 980
  },{
    restaurant_id: @restaurants[2].id,
    name: 'フレッシュサラダ',
    price: 700
  },{
    restaurant_id: @restaurants[2].id,
    name: 'アヒージョ',
    price: 1200
  }
])

# 居酒屋・ぎょーさん
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

# カフェ・50s
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

# 居酒屋・ロクサブロウ
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

# 中華・四国志
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　焼き肉・源太郎
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　焼き肉・キングダム　
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　居酒屋・猫泥棒
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　カレー・インディ
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　居酒屋・315
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　カフェ・ラパン
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　イタリアン・白い海岸
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　イタリアン・ロストーロ
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　ピザ屋・デ・ロッソ
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　ラーメン・海道
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　ラーメン・豚骨道場
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　居酒屋・魚介バル
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　居酒屋・隠れ家
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

#　居酒屋・食い倒れ
Menu.create!([
  {
    restaurant_id: @restaurants[1].id,
    name: 'マルゲリータ',
    price: 1200
  },{
    restaurant_id: @restaurants[1].id,
    name: 'デラックスピザ',
    price: 1200
  }
])

