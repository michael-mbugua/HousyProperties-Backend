puts "Seeding data ..."

# Owner seed data
owner=Admin.create(Name:"Ellis",Phone:2547,Email:"ellis@gmail.com",Password:"Qr123")
# complain seed data
complain=Complain.create(Name:"phill",Phone:25436725,Email:"phillomen@gmail.com",HouseNo:1,HouseType:"Condo",complain:"there has been water leakage in my kitchen")
puts "Done Seeding"