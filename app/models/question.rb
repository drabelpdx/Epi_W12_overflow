class Question < ActiveRecord::Base
  belongs_to :user

  validates :question, :presence => true
  validates :body, :presence => true
end
