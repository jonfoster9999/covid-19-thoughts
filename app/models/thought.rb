class Thought < ActiveRecord::Base
  validates :name, presence: true
  validates :body, presence: true
  validates :email, presence: true

  has_many :comments
  belongs_to :user, optional: true

end
