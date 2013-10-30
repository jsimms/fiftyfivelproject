FactoryGirl.define do
  factory :user do
    name     "Johnny Poboy"
    email    "johnny.poboy@example.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end