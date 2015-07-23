class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.string :name
      t.string :imgurl
      t.string :location
      t.string :membersince
      t.string :completion
      t.string :description

      t.timestamps null: false
    end
  end
end
