class CreateAdminStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_statistics do |t|
      t.string :event
      t.integer :value, default: 0

      t.timestamps
    end
  end
end
