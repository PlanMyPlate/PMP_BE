class CreateCalendar < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
