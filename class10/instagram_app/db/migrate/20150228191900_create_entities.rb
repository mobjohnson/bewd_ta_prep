class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :author
      t.text :photo_url
      t.string :date_taken
    end
  end
end
