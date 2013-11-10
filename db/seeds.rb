# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


talents = Talent.create([{ name: "acrobate"}, {name: "contortionist"}, {name: "clown"}, {name: "juggler"}, {name: "freak"}])

p1 = Performer.create({
  name: "Bob",
  talent_id: 1,
  generation_number: 1
  })
p2 = Performer.create({
  name: "Rob",
  talent_id: 2,
  generation_number: 1
  })
p3 = Performer.create({
  name: "Daisy",
  talent_id: 3,
  generation_number: 1
  })
p4 = Performer.create({
  name: "Maria",
  talent_id: 4,
  generation_number: 1
  })
p1 = Performer.create({
  name: "Crystal",
  talent_id: 5,
  generation_number: 1
  })

a1 = Act.create({
  name: "The Awesome Act!",
  date: "Oct 30, 2013",
  time: "7:00"
  })

a2 = Act.create({
  name: "The SupaCool Act!",
  date: "Nov 30, 2013",
  time: "7:00"
  })

a3 = Act.create({
  name: "The Bombastic Act!",
  date: "Dec 3, 2013",
  time: "10:00"
  })

ap1 = ActPerformer.create({
  act_id: 1,
  performer_id: 1
  
  })

ap2 = ActPerformer.create({
  performer_id: 2,
  act_id: 1
  })

ap3 = ActPerformer.create({
  performer_id: 3,
  act_id: 1
  })

ap4 = ActPerformer.create({
  performer_id: 3,
  act_id: 2
  })

ap5 = ActPerformer.create({
  performer_id: 4,
  act_id: 2
  })

ap6 = ActPerformer.create({
  performer_id: 5,
  act_id: 3
  })

ap7 = ActPerformer.create({
  performer_id: 1,
  act_id: 3
  })



