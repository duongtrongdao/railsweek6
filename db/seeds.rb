User.create!(name:  "Example User",
             email: "example1@railstutorial.org",
             sex: 1,
             password:              "foobar",
             password_confirmation: "foobar",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "thicogtu-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              sex: 1,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end
users = User.order(:created_at).take(6)
