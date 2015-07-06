FactoryGirl.define do
  factory(:user) do
    email('ian@ian.com')
    password('password')
  end
end
