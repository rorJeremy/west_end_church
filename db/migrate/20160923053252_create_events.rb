class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
	    t.string :name
	    t.text :description
	    t.binary :image
	    t.string :phone_number
	    t.string :directions_url
	    t.string :location
	    t.string :address
	    t.string :city
	    t.string :state
	    t.string :zip_code
	    t.date :end_date
	    t.date :start_date
    	t.time :start_time
    	t.time :end_time
      t.timestamps
    end
  end
end