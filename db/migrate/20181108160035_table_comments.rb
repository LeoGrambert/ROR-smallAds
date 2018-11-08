class TableComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments
    add_column :comments, :advertisements_id, :int
    add_column :comments, :content, :text
    add_column :comments, :author, :string
  end
end
