sian = User.create!(
  email: "sian.m.stone@gmail.com",
  username: "siansian",
  password: "foobar",
  first_name: "Sian",
  last_name: "Stone"
)

thing1 = Thing.create(name: "something", user: sian)

