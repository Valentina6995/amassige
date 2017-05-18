class CreateAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisements do |t|

      t.integer :status, null: false, default: 0
      t.float :price 
      t.integer :adv_type, null: false, default: 0
      t.string :description

      t.timestamps
    end

    add_reference :advertisements, :user, foreign_key: true
  end
end
