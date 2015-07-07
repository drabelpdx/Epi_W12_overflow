class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  validates :question, :presence => true
  validates :body, :presence => true
  after_create :send_question_confirmation

  def send_question_confirmation
    QuestionMailer.question_confirmation(self.user).deliver
  end


end
