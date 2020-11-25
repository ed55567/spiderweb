class RemoveStringToSpiders < ActiveRecord::Migration[6.0]
  def change
    remove_column :spiders, :string, :string
  end
end
