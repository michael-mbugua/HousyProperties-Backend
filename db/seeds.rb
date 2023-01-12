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
    house_no: 01,
    phone_no: +254123456789,
    unit_type: "2 Bedroom",
    date_in: "07/05/2019",
    balance_due: 14700
  },
  {
    name: 'Michael',
    house_no: 02,
    phone_no: +254123456789,
    unit_type: "4 Bedroom",
    date_in: "27/5/2019",
    balance_due: 1700
  },
  {
    name: 'Valeria',
    house_no: 03,
    phone_no: +254123456789,
    unit_type: "4 Bedroom",
    date_in: "9/5/2019",
    balance_due: 3450
  },
  {
    name: 'Benson',
    house_no: 04,
    phone_no: +254123456789,
    unit_type: "5 Bedroom",
    date_in: "17/08/2017",
    balance_due: 44700
  },
  {
    name: 'Ashley',
    house_no: 05,
    phone_no: +254123456789,
    unit_type: "4 Bedroom",
    date_in: "19/09/2021",
    balance_due: 14
  }

])