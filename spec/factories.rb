FactoryGirl.define do
  factory(:user) do
    email('ian@ian.com')
    password('password')
  end

  factory(:question) do
    question('What is 1 + 1 equal to?')
    body("I've been at this for days. Please help.")
  end
end
