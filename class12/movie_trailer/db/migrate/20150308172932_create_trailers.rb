class CreateTrailers < ActiveRecord::Migration
  def change
    create_table :trailers do |t|
      t.string :title
      t.integer :embed_url
      t.references :movie
    end
  end
end
