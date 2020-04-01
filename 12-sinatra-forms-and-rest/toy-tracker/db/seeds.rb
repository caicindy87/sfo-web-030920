Toy.destroy_all
Child.destroy_all

# avoid duplicates

c1 = Child.create!(name:'Vanderson', age: 5)
c2 = Child.create!(name: 'Georgie', age: 8)

t1 = Toy.create!(name: 'Plastic Car', child_id: c1.id)
t2 = Toy.create!(name: 'Wooden Car', child_id: c2.id)
t3 = Toy.create!(name: 'Mini-Jeep', child_id: c1.id)
t4 = Toy.create!(name: 'Toy ATV', child_id: c2.id)
