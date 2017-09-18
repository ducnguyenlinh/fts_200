Course.create!([
  {name: "Rails Tutorial",
  total_time: 20,
  description: "You will make sample app",
  link_image: "https://i.imgur.com/SYiCyRX.png"},
  {name: "Rails Tutorial 2",
  total_time: 30,
  description: "You will make advance app",
  link_image: "https://i.imgur.com/Tx8M3jJ.png"}
])

Subject.create!([
  {name: "chapter 1", course_id: 1, start_time: 3,
    description: "From zero to deploy"},
  {name: "chapter 2", course_id: 1, start_time: 3,
    description: "A toy app"},
  {name: "chapter 3", course_id: 1, start_time: 5,
    description: "Mostly static pages"},
  {name: "chapter 4", course_id: 1, start_time: 3,
    description: "Rails-flavored Ruby"},
  {name: "chapter 5", course_id: 1, start_time: 6,
    description: "Filling in the layout"}
])
