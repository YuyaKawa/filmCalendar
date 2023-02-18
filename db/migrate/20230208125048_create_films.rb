class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :film_name
      t.integer :running_time
      t.string :delete_flag

      t.timestamps
    end
  end
end
