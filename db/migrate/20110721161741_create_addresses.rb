class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.belongs_to :person

      t.timestamps
    end
    add_index :addresses, :person_id
  end
end
