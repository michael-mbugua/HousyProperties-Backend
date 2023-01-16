
puts "Seeding data ..."

# Owner seed data
owner=Admin.create(Name:"Ellis",Phone:254721345678,Email:"ellis@gmail.com",password:"Qr123")
# complain seed data
complain=Housecomplain.create(Name:"Benson",Phone:254721345678,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"there has been water leakage in my kitchen",property_id:1)
complain=Housecomplain.create(Name:"valeria",Phone:254721345678,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"the WIFI has been slow what's happening??!!",property_id:2)
complain=Housecomplain.create(Name:"Duncan",Phone:254721345678,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"there has been black out since yesterday fix that",property_id:3)
complain=Housecomplain.create(Name:"James",Phone:254721345678,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"The house next door plays loud music kindly check that",property_id:4)
payments=Payment.create(Name:"john",amount:20000,property_id:2 ,PhoneNumber:254712345678)
payments=Payment.create(Name:"lorem",amount:25000,property_id:3,PhoneNumber:254712345678)

# CREATE MESSAGE 
message=Contact.create(Name:"jeniffer",Email:"lopez@gmail.com",phone:254721345678,message:"Are there vaccant rooms to let ?")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Property.create([
  {
    propertyName: 'Lorem ipsum',
    property_type: "Villa",
    unit_type: "2 Bedroom",
    location: "Kileleshwa",
    image: "https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 35000,
    wifi: true,
    shower: true,
    balcony: true,
    parking: true
  },
  {
    propertyName: 'Lorem ipsum',
    property_type: "Apartment",
    unit_type: "3 Bedroom",
    location: "Nairobi",
    image: "https://images.pexels.com/photos/2462015/pexels-photo-2462015.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 45000,
    wifi: true,
    shower: true,
    balcony: true,
    parking: true
  },
  {
    propertyName: 'Lorem ipsum',
    property_type: "Family House",
    unit_type: "4 Bedroom",
    location: "Nairobi",
    image: "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 55000,
    wifi: true,
    shower: true,
    balcony: true,
    parking: true
  },
  {
    propertyName: 'Lorem ipsum',
    property_type: "Villa",
    unit_type: "4 Bedroom",
    location: "Utawala",
    image: "https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 60000,
    wifi: true,
    shower: true,
    balcony: true,
    parking: true
  },
  {
    propertyName: 'Lorem ipsum',
    property_type: "Apartment",
    unit_type: "2 Bedroom",
    location: "Karen",
    image: "https://images.pexels.com/photos/265004/pexels-photo-265004.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 30000,
    wifi: true,
    shower: true,
    balcony: true,
    parking: true

  }
  

])
Tenant.create([
  {
    name: 'Duncan',
    last_name: "lamento",
    phone_no: 254721345678,
    unit_type: "2 Bedroom",
    date_in: "07/05/2019",
    rent_payable: 14700,
    property_id: 1,
    email:"lorem@gmail.com",
    password:"Dun123",
    HouseType:"family house"
  },
  {
    name: 'Benson',
    last_name: "oduor",
    phone_no: 254721345678,
    unit_type: "3 Bedroom",
    date_in: "07/05/2022",
    rent_payable: 14700,
    property_id: 3,
    email:"lorem@gmail.com",
    password:"ben123",
    HouseType:"family house"
  },
  {
    name: 'mike',
    last_name: "john",
    phone_no: 254721345678,
    unit_type: "2 Bedroom",
    date_in: "07/05/2019",
    rent_payable: 14700,
    property_id: 2,
    email:"lorem@gmail.com",
    password:"johnte254",
    HouseType:"Villa "
  }

])
puts "Done seeding"
