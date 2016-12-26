class CreatePhotoGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_galleries do |t|

      t.timestamps
    end
  end
end
