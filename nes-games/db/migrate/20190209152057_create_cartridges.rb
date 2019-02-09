class CreateCartridges < ActiveRecord::Migration
  def change
    create_table :cartridges do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
