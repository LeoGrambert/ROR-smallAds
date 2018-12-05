class AddPriceToAdvertisments < ActiveRecord::Migration[5.2]
  def change
    add_column :advertisements, :price, :int
  end
end
