class AddAgeToMesseges < ActiveRecord::Migration
  def change
    add_column :messeges, :age, :integer
  end
end
