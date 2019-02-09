class AddPublisherIdToCartridge < ActiveRecord::Migration
  def change
    add_column :cartridges, :publisher_id, :integer
  end
end
