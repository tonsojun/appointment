class ChangeDateFormatInMeetings < ActiveRecord::Migration[6.1]
  def change
    remove_column :meetings, :time, :time
    add_column :meetings, :start, :datetime
  end
end
