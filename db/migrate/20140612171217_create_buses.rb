class CreateBuses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :route
      t.string :direction
    end
  end
end
