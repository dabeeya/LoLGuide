class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|

      t.references :user
      t.timestamps
    end
  end
end
