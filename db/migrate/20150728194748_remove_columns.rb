class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :posts, :author
  end
end
