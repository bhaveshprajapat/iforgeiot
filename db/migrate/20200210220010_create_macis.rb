class CreateMacis < ActiveRecord::Migration[6.0]
  def change
    create_table :macis do |t|
      t.string :maci_name
      t.string :maci_training
      t.integer :on_freq
      t.integer :off_freq
      t.integer :plug_number
      t.integer :remote_number
      t.boolean :out_of_order

      t.timestamps
    end
  end
end
