class CreateCharts < ActiveRecord::Migration
  def change
    create_table :charts do |t|
      t.string :ticker
      t.date :sday
      t.date :eday

      t.timestamps
    end
  end
end
