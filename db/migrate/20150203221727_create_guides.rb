class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.string :champion_advice
      t.string :item_build


      t.references :champion
      t.references :user
      t.timestamps
    end
  end
end
