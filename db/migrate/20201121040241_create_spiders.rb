class CreateSpiders < ActiveRecord::Migration[6.0]
  def change
    create_table :spiders do |t|
      t.string :spiderman
      t.integer :year
      t.string :maryjane
      t.string :villian

      t.timestamps
    end
  end
end
