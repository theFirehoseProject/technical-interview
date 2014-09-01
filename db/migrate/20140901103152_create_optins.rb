class CreateOptins < ActiveRecord::Migration
  def change
    
  	add_column :optins, :name, :string
  	add_column :optins, :email, :string
    
  end
end
