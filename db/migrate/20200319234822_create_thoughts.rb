class CreateThoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :thoughts do |t|
      t.text :body
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
