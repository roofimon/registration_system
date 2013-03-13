class CreateRegistrants < ActiveRecord::Migration
  def change
    create_table :registrants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.string :position
      t.string :phone

      t.timestamps
    end
  end
end
