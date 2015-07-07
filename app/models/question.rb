class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  validates :question, :presence => true
  validates :body, :presence => true
  after_create :send_question_confirmation

  default_scope { order(created_at: 'DESC') }

  def send_question_confirmation
    QuestionMailer.question_confirmation(self.user).deliver
  end



end
