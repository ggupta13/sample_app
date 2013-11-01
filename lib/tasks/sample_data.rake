namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User2.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      User2.create!(name: name,
                   email: email)
    end

    users = User2.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end

  end
end

