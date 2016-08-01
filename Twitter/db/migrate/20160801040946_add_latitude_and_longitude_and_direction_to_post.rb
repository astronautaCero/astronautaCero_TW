class AddLatitudeAndLongitudeAndDirectionToPost < ActiveRecord::Migration
  def change
    add_column :posts, :direction, :string
    add_column :posts, :latitude, :float
    add_column :posts, :longitude, :float
  end
end
