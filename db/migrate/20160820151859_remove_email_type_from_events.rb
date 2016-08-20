class RemoveEmailTypeFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :email_type, :string
  end
end
