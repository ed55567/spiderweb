class AddDescriptionToSpidersB < ActiveRecord::Migration[6.0]
  def change
    add_column :spiders, :description, :string
  end
end
