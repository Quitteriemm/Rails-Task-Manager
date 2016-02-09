class ChangeFieldDescription < ActiveRecord::Migration
  def change
    rename_column :tasks, :descritpion, :description
  end
end
