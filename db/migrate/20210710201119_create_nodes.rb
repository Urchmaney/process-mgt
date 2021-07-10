class CreateNodes < ActiveRecord::Migration[6.1]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
