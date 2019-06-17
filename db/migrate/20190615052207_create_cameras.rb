class CreateCameras < ActiveRecord::Migration[5.2]
  def change
    create_table :cameras do |t|
      t.string :first_name
      t.string :last_name
      t.string :morf
      t.string :startdate
      t.string :enddate
      t.string :category
      t.string :address
      t.string :landmark
      t.string :emil
      t.integer :phone
      t.string :cameraman
      t.string :owner

      t.timestamps
    end
  end
end
