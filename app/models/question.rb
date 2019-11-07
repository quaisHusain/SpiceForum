class Question < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many   :answers, dependent: :destroy
  has_many   :comments, as: :commentable, dependent: :destroy

  validates :title, presence: true

  validates :body, presence: true

  scope :order_by_newest, -> { order("id desc") }
end
