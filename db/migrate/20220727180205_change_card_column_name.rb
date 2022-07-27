class ChangeCardColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :cards, :type, :effectType
  end
end
