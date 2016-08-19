class ChangeEventsColumnEventToEventType < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :event, :event_type
  end
end
