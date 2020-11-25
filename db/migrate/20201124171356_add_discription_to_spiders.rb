class AddDiscriptionToSpiders < ActiveRecord::Migration[6.0]
  def change
    add_column :spiders, :director, :string
    add_column :spiders, :discription, :string
  end
end
