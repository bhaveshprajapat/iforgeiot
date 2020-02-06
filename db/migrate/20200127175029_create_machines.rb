class CreateMachines < ActiveRecord::Migration[6.0]
  def change
    create_table :machines do |t|
      t.string :machine_name
      t.references :machine_type, null: false, foreign_key: true
      t.boolean :out_of_order
      t.integer :on_frequency
      t.integer :off_frequency

      t.timestamps
    end
  end
end
