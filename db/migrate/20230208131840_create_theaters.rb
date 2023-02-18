class CreateTheaters < ActiveRecord::Migration[7.0]
  def change
    create_table :theaters do |t|
      t.string :theater_name
      t.string :place
      t.integer :p_default
      t.integer :p_first
      t.integer :p_mon
      t.integer :p_tue
      t.integer :p_wed
      t.integer :p_thu
      t.integer :p_fri

      t.timestamps
    end
  end
end
