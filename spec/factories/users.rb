FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    username { Faker::Internet.unique.username }
    password { "password" }
    password_confirmation { "password" }

    trait :avatared do
      after(:build) do |user|
        user.avatar.attach(io: File.open(Rails.root.join("design/starter-code/assets/user-images/image-anne.jpg")),
                           filename: "image-anne.jpg", content_type: "image/jpeg")
      end
    end
  end
end
