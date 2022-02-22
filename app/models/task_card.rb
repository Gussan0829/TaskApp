class TaskCard < ApplicationRecord
  validates :title, presence: true
  validates :memo,  length: { maximum: 1000 }

  belongs_to :list
end
