require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_confirmation_of :password}

#add more tests later?

end
