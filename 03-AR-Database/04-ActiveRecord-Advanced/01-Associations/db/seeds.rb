# TODO: Write a seed
require 'faker'

5.times do
  user = User.create ({
    username: Faker::Internet.user_name,
    email: Faker::Internet.email
  })


  (5..10).to_a.sample.times do
    user.posts.create ({
      name: Faker::Lorem.word,
      url: Faker::Internet.url
    })
  end
end

