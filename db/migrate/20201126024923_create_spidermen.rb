class CreateSpidermen < ActiveRecord::Migration[6.0]
  def change
    create_table :spidermen do |t|

      t.timestamps
    end
  end
end
