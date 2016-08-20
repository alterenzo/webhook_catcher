class ChangeEmailTypeColunmNameTypeToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :email_types, :type, :name
  end
end
