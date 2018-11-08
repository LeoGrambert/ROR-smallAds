class TableAdvertisements < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisements
    add_column :advertisements, :title, :string
    add_column :advertisements, :content, :text
    add_column :advertisements, :author, :string
    add_column :advertisements, :state, :string
  end
end
