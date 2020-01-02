class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.string :machine_name
      t.references :machine_type, null: false, foreign_key: true
      t.boolean :out_of_order

      t.timestamps
    end
  end
end
