class AddEmailTypeToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :email_type, foreign_key: true
  end
end
