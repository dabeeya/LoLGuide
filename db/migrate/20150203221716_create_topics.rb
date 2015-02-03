class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.string :body

      t.references :user
      t.timestamps
    end
  end
end
