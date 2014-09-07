class CreateOptins < ActiveRecord::Migration
  def change
	  create_table "optins", force: true do |t|
	    t.string "name"
	    t.string "email"
	  end    
  end
end
