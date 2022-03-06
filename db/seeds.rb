puts "destroying old data + resetting primary key sequence"

Audition.destroy_all
Audition.reset_pk_sequence
Role.destroy_all
Role.reset_pk_sequence

puts "seeding .........."

xxxx = Role.create(character_name: "XXXX")
tammy = Role.create(character_name: "Tammy")
daniel = Audition.create(actor: "Daniel Craig", location: "Seattle", phone: "1234567899", hired: true, role_id: xxxx.id)
sienna = Audition.create(actor: "Sienna Miller", location: "Seattle", phone: "9876543211", hired: true, role_id: tammy.id)
david = Audition.create(actor: "David Allan", location: "LA", phone: "1111111111", hired: false, role_id: xxxx.id)
simona = Audition.create(actor: "Simona Werry", location: "LA", phone: "2222222222", hired: false, role_id: tammy.id)

puts "🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 "