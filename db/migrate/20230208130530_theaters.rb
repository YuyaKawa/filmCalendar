class Theaters < ActiveRecord::Migration[7.0]
  def change
    drop_table :theaters
  end
end
