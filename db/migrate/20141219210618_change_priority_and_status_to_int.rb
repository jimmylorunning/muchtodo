class ChangePriorityAndStatusToInt < ActiveRecord::Migration
  def up
  	change_column :todos, :priority, 'integer USING CAST(priority AS integer)'
   	change_column :todos, :status, 'integer USING CAST(status AS integer)'
  end

  def down
#  	change_column :todos, :priority, :string
#  	change_column :todos, :status, :string
  end
end
