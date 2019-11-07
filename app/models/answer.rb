class Answer < ApplicationRecord

  belongs_to :question
  belongs_to :user

  validates :content, presence: true

  scope :order_by_newest, -> { order("id desc") }
  scope :order_by_oldest, -> { order("id asc") }

end
