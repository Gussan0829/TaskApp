class CreateTaskCards < ActiveRecord::Migration[6.0]
  def change
    create_table :task_cards do |t|
      t.string      :title, null: false
      t.text        :memo, limit: 1000
      t.date        :deadline
      t.integer     :position
      t.references  :list, foreign_key: true,null: false
      t.timestamps
    end
  end
end
