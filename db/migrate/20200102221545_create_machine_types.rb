class CreateMachineTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :machine_types do |t|
      t.string :machine_type
      t.string :description

      t.timestamps
    end
  end
end
