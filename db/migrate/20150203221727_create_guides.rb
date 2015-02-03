class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|

      t.references :champion
      t.references :user
      t.timestamps
    end
  end
end
