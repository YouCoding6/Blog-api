Article.destroy_all
User.destroy_all

10.times do
    User.create(
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end
30.times do
    Article.create(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraph,
        user_id: rand(1..10)
    )
end