
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create!(name: "Medicine")
c2 = Category.create!(name: "Beauty")
c3 = Category.create!(name: "Grocery")

k11 = Keyword.create(phrase: "pills", category_id: c1.id)
k21 = Keyword.create(phrase: "drops", category_id: c1.id)
k31 = Keyword.create(phrase: "syrup", category_id: c1.id)

k12 = Keyword.create(phrase: "makeup", category_id: c2)
k22 = Keyword.create(phrase: "saloon", category_id: c2)
k32 = Keyword.create(phrase: "barber", category_id: c2)

k13 = Keyword.create(phrase: "food", category_id: c3)
k23 = Keyword.create(phrase: "convenience", category_id: c3)
k33 = Keyword.create(phrase: "fruits", category_id: c3)


s1 = Store.create(name: "CruzAzul", street: "Guayacanes y Ficus", number: "1231", zipcode: "GYE12389", city: "Guayaquil", state: "Guayas",  country: "EC")
s2 = Store.create(name: "Fybeca", street: "Guayacanes y Ficus", number: "1231", zipcode: "GYE12389", city: "Guayaquil", state: "Guayas",country: "EC")


p1 = Product.create!(name: "Cepillo dental", color: "Azul", size: "x-small", price: 1.45, category: c1, stores: [s1])
p2 = Product.create(name: "Uvas", color: "Azul", size: "small", price: 1.45, category: c2, stores: [s1,s2]) 
p3 = Product.create(name: "Cepillo", color: "Azul", size: "medium", price: 1.45, category: c3, stores: [s2]) 
