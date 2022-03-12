class List < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :task_cards, -> { order(position: :asc) }, dependent: :destroy
end
