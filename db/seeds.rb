# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
player1 = Player.create!(
    email: "bob@email.com",
    password: "password",
    health: 50,
    armor: 10,
    damage: 10, 
    player_name: "Bobby",
    wallet: 10,
    player_wins: 2,
    player_loses: 0,
    player_rank: 2
)

player1_page = PersonalPage.create(
    player: player1
    
    
)
player1_page.house_image.attach(io: File.open(Rails.root.join('app/assets/images/tent.jpg')),
filename: 'tent.jpg')

player1_inventory = Inventory.create(
    player: player1
)

#.images.attach(io: File.open("app/assets/images/tent.jpg"), filename: "tent.jpg", content_type: "image/jpeg")

player2 = Player.create!(
    email: "alice@email.com",
    password: "password",
    health: 50,
    armor: 10,
    damage: 10,
    player_name: "CuriousAlice",
    
    wallet: 5,
    player_wins: 0,
    player_loses: 0,
    player_rank: 0
)

player2_page = PersonalPage.create(
    player: player2
)
player2_page.house_image.attach(io: File.open(Rails.root.join('app/assets/images/castle.jpg')),
filename: 'castle.jpg')

player2_inventory = Inventory.create(
    player: player2
)

item1 = Item.create(
    name: "Iron Shortsword",
    damage: 10,
    armor: 0,
    health: 0,
    equipped: true,
    inventory: player1_inventory
    #forgot to add boolean for "equipped" status

)
item1.icon_image.attach(io: File.open(Rails.root.join('app/assets/images/ironsword.png')),
filename: 'ironsword.png')
item1a = Item.create(
    name: "Iron Shortsword",
    damage: 10,
    armor: 0,
    health: 0,
    equipped: true,
    inventory: player2_inventory
    #forgot to add boolean for "equipped" status

)
item1a.icon_image.attach(io: File.open(Rails.root.join('app/assets/images/ironsword.png')),
filename: 'ironsword.png')
item2 = Item.create(
    name: "Iron Cap",
    damage: 0,
    armor: 10,
    health: 10,
    equipped: true,
    inventory: player1_inventory
    #forgot to add boolean for "equipped" status

)
item2.icon_image.attach(io: File.open(Rails.root.join('app/assets/images/ironcap.jpg')),
filename: 'ironsword.jpg')

item2a = Item.create(
    name: "Iron Cap",
    damage: 0,
    armor: 10,
    health: 10,
    equipped: true,
    inventory: player2_inventory
    #forgot to add boolean for "equipped" status
)
item2a.icon_image.attach(io: File.open(Rails.root.join('app/assets/images/ironcap.jpg')),
filename: 'ironsword.jpg')
item3 = Item.create(
    name: "Thunderfury, Blessed Blade of the Windseeker",
    damage: 1000,
    armor: 1000,
    health: 1000,
    equipped: true,
    inventory: player2_inventory
    #forgot to add boolean for "equipped" status
)

item3.icon_image.attach(io: File.open(Rails.root.join('app/assets/images/thunderfury.PNG')),
filename: 'thunderfury.PNG')


player3 = Player.create!(
    email: 'nate@email.com',
    password: 'password',
    player_name: 'Nate',
    wallet: 0,
    player_wins: 0,
    player_loses: 1,
    player_rank: 1
)

player3_page = PersonalPage.create(
    player: player3
)

player3_inventory = Inventory.create(
    player: player3
)
player3_page.house_image.attach(io: File.open(Rails.root.join('app/assets/images/house2.jpg')),
filename: 'house2.jpg')

player4 = Player.create!(
    email: 'blake@email.com',
    password: 'password',
    player_name: 'Blake',
    wallet: 10,
    player_wins: 1,
    player_loses: 0,
    player_rank: 1
)

player4_page = PersonalPage.create(
    player: player4
)

player4_inventory = Inventory.create(
    player: player4
)

player4_page.house_image.attach(io: File.open(Rails.root.join('app/assets/images/house3.jpg')),
filename: 'house3.jpg')

player5 = Player.create!(
    email: 'adam@email.com',
    password: 'password',
    player_name: 'Adam',
    wallet: 25,
    player_wins: 0,
    player_loses: 0,
    player_rank: 0
)

player5_page = PersonalPage.create(
    player: player5
)

player5_inventory = Inventory.create(
    player: player5
)

player5_page.house_image.attach(io: File.open(Rails.root.join('app/assets/images/house1.jpg')),
filename: 'house1.jpg')

friend1 = Friend.create!(
    email: player2.email,
    player_name: player2.player_name,
    player_id: player2.id,
    identification_number: 2,
    player: player1
)

friend01 = Friend.create!(
    email: player4.email,
    player_name: player4.player_name,
    player_id: player4.id,
    identification_number: 4,
    player: player3
)

friend02 = Friend.create!(
    email: player5.email,
    player_name: player5.player_name,
    player_id: player5.id,
    identification_number: 5,
    player: player3
)

friend11 = Friend.create!(
    email: player3.email,
    player_name: player3.player_name,
    player_id: player3.id,
    identification_number: 3,
    player: player4
)

friend12 = Friend.create!(
    email: player5.email,
    player_name: player5.player_name,
    player_id: player5.id,
    identification_number: 5,
    player: player4
)

friend21 = Friend.create!(
    email: player4.email,
    player_name: player4.player_name,
    player_id: player4.id,
    identification_number: 4,
    player: player5
)

friend22 = Friend.create!(
    email: player3.email,
    player_name: player3.player_name,
    player_id: player3.id,
    identification_number: 3,
    player: player5
)
