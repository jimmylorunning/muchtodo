class AddDateDone < ActiveRecord::Migration
  def up
  	add_column :todos, :date_done, :datetime
  end

  def down
  	remove_column :todos, :date_done
  end
end
