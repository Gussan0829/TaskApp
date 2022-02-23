class List < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :task_cards, dependent: :destroy
end
