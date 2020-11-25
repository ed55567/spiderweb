class RemoveDiscriptionToSpiders < ActiveRecord::Migration[6.0]
  def change
    rename_column :spiders, :discription, :string
  end
end
