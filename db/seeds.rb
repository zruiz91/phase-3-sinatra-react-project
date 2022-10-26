puts "🌱 Seeding spices..."
Streamer.destroy_all
Game.destroy_all

puts "Creating Streamers..."
variety_streamer = Streamer.create(name: "NorthernLion", genre: "Variety")
shooter_streamer = Streamer.create(name: "NICKMERCS", genre: "Shooter")
rpg_streamer = Streamer.create(name: "DansGaming", genre: "RPG")
puzzle_streamer = Streamer.create(name: "Elajjaz", genre: "Puzzle")
moba_streamer = Streamer.create(name: "ZachAttack", genre: "MOBA")
drama_streamer = Streamer.create(name: "XQC", genre: "Drama")

puts "Creating Games..."
shooter_game = Game.create(title: "Gears of War", genre: "Shooter")
moba_game = Game.create(title: "League of Legends", genre: "MOBA")
puzzle_game = Game.create(title: "Magic the Gathering", genre: "Puzzle")
variety_game = Game.create(title: "There is no plan for today", genre: "Variety")
drama_game  = Game.create(title: "Drama Alert", genre: "Drama")
rpg_game = Game.create(title: "Creating Myself in the Sims.", genre: "RPG")

puts "Creating Performances..."
Performance.create(title: "Sporcle? SAP? !Docket", streamer_id: variety_streamer.id, game_id: variety_game.id)
Performance.create(title: "Race to Master prestige!!!", streamer_id: moba_streamer.id, game_id: moba_game.id)
Performance.create(title: "#SellOut Tuesday...", streamer_id: variety_streamer.id, game_id: variety_game.id)
Performance.create(title: "streaming the hard way", streamer_id: puzzle_streamer.id, game_id: puzzle_game.id)
Performance.create(title: "24hr streeam sesh!!!!!! 😎🚨🚨", streamer_id: drama_streamer.id, game_id: drama_game.id)
Performance.create(title: "what are games? Find out here…", streamer_id: variety_streamer.id, game_id: variety_game.id)
Performance.create(title: "cheetos fingers?!? what you need to know about this bnew craze.", streamer_id: moba_streamer.id, game_id: moba_game.id)
Performance.create(title: "gears of war? more like gears of BORE", streamer_id: shooter_streamer.id, game_id: shooter_game.id)
Performance.create(title: "leagues of legends highlights!", streamer_id: moba_streamer.id, game_id: moba_game.id)
Performance.create(title: "why was dota 5 afraid of dota 6. because dota 6 8 7. Its a dumb joke.", streamer_id: drama_streamer.id, game_id: drama_game.id)
Performance.create(title: "asdfgh GET IN HERE QUICK!!!DRAMA ALERT!!!", streamer_id: drama_streamer.id, game_id: drama_game.id)
Performance.create(title: "Liriq and Omarion play Halo", streamer_id: shooter_streamer.id, game_id: shooter_game.id)
Performance.create(title: "Vitamin Water Presents: TommyInnit & 50 Cent play Minecraft", streamer_id: puzzle_streamer.id, game_id: puzzle_game.id)
Performance.create(title: "Is Blood On Sand the new old GTA", streamer_id: rpg_streamer.id, game_id: rpg_game.id)
Performance.create(title: "Sponsered by your mom.", streamer_id: drama_streamer.id, game_id: drama_game.id)
puts "✅ Done seeding!"
