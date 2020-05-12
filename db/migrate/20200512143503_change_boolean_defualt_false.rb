class ChangeBooleanDefualtFalse < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :boolean, :completed, :default => false
  end
end
