FactoryGirl.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name  {Faker::Name.last_name}
    email {"#{first_name}.#{last_name}@hotmail.com"}
    username  {"#{first_name}_#{last_name}"}
    password 'abc123'
    association :role, factory: :user_role

    factory :admin_user do
      association :role, factory: :admin_role
    end
    factory :trainer_user do
      association :role, factory: :trainer_role
    end
  end
end
