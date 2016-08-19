class ChangeEventsTimestampToDatetime < ActiveRecord::Migration[5.0]
  def change
    change_column :events, :timestamp, :datetime
  end
end
