class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
      t.json :attributes_hash

      t.timestamps
    end
  end
end
