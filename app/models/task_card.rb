class TaskCard < ApplicationRecord
  validates :title, presence: true
  validates :memo,  length: { maximum: 1000 }, presence: true

  belongs_to :list
  acts_as_list scope: :list
end
