class CreateGadgets < ActiveRecord::Migration[8.0]
  def change
    create_table :gadgets do |t|
      t.string :name
      t.string :sku

      t.timestamps
    end
  end
end
