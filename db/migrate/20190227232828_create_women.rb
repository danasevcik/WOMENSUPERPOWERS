class CreateWomen < ActiveRecord::Migration[5.2]
  def change
    create_table :women do |t|
      t.string :name

      t.timestamps
    end
  end
end
