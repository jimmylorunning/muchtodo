class ChangePriorityAndStatusToInt < ActiveRecord::Migration
  def up
  	change_column :todos, :priority, :integer
   	change_column :todos, :status, :integer
  end

  def down
  	change_column :todos, :priority, :string
  	change_column :todos, :status, :integer
  end
end
