
puts "Seeding data ..."

# Owner seed data
owner=Admin.create(Name:"Ellis",Phone:2547,Email:"ellis@gmail.com",password:"Qr123")
# complain seed data
complain=Housecomplain.create(Name:"Benson",Phone:2543,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"there has been water leakage in my kitchen",property_id:1)
complain=Housecomplain.create(Name:"valeria",Phone:2543,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"the WIFI has been slow what's happening??!!",property_id:2)
complain=Housecomplain.create(Name:"Duncan",Phone:2543,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"there has been black out since yesterday fix that",property_id:3)
complain=Housecomplain.create(Name:"James",Phone:2543,Email:"phillomen@gmail.com",HouseType:"Condo",complain:"The house next door plays loud music kindly check that",property_id:4)
payments=Payment.create(Name:"john",amount:20000,property_id:2)
payments=Payment.create(Name:"lorem",amount:25000,property_id:3)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Property.create([
  {
    name: 'Lorem ipsum',
    property_type: "Villa",
    unit_type: "2 Bedroom",
    location: "Kileleshwa",
    image: "https://images.pexels.com/photos/276724/pexels-photo-276724.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 35000
  },
  {
    name: 'Lorem ipsum',
    property_type: "Apartment",
    unit_type: "3 Bedroom",
    location: "Nairobi",
    image: "https://images.pexels.com/photos/2462015/pexels-photo-2462015.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 45000
  },
  {
    name: 'Lorem ipsum',
    property_type: "Family House",
    unit_type: "4 Bedroom",
    location: "Nairobi",
    image: "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 55000
  },
  {
    name: 'Lorem ipsum',
    property_type: "Villa",
    unit_type: "4 Bedroom",
    location: "Utawala",
    image: "https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 60000
  },
  {
    name: 'Lorem ipsum',
    property_type: "Apartment",
    unit_type: "2 Bedroom",
    location: "Karen",
    image: "https://images.pexels.com/photos/265004/pexels-photo-265004.jpeg?auto=compress&cs=tinysrgb&w=300",
    amount: 30000
  }
  

])

Tenant.create([
  {
    name: 'Duncan',
    phone_no: 2541,
    unit_type: "2 Bedroom",
    date_in: "07/05/2019",
    balance_due: 14700,
    property_id: 1
  },
  {
    name: 'Michael',
    phone_no: 2541,
    unit_type: "4 Bedroom",
    date_in: "27/5/2019",
    balance_due: 1700,
    property_id: 3
  },
  {
    name: 'Valeria',
    phone_no: 25412,
    unit_type: "4 Bedroom",
    date_in: "9/5/2019",
    balance_due: 3450,
    property_id: 2
  },
  {
    name: 'Benson',
    phone_no: 2541,
    unit_type: "5 Bedroom",
    date_in: "17/08/2017",
    balance_due: 44700,
    property_id: 4
  },
  {
    name: 'Ashley',
    phone_no: 2541,
    unit_type: "4 Bedroom",
    date_in: "19/09/2021",
    balance_due: 14,
    property_id: 5
  }

])
puts "Done seeding"
