class AddFirehoseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :firehose, :boolean
  end
end
