class AddColourToCartridge < ActiveRecord::Migration
  def change
    add_column :cartridges, :colour, :string
  end
end
