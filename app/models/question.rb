class Question < ActiveRecord::Base
  validates :question, :presence => true
  validates :body, :presence => true
end
