class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.references :city, :null => false
      t.string :name, :null => false
    end
    add_index :universities, :name, :unique => true
  end
end
