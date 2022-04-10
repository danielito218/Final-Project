class CreateStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :statuses do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
