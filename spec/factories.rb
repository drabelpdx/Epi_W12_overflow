FactoryGirl.define do
  factory(:user) do
    email('ian@ian.com')
    password('password')
  end

  factory(:question) do
    question('What is 1 + 1 equal to?')
    body("I've been at this for days. Please help.")
    user_id(0)
  end

  factory(:answer) do
    answer('This is my answer')
    question_id(0)
  end
end
