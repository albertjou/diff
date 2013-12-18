class RemoveDestroyCreateIndexFromAuthentication < ActiveRecord::Migration
  def up
    remove_column :authentications, :destroy
    remove_column :authentications, :create
    remove_column :authentications, :index
  end

  def down
    add_column :authentications, :index, :string
    add_column :authentications, :create, :string
    add_column :authentications, :destroy, :string
  end
end
