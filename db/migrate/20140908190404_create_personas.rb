class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :name
      t.string :email
      t.string :phone

      
      t.timestamps
    end
  end
end
