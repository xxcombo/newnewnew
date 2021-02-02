class AddPostTypeToDomitories < ActiveRecord::Migration[5.2]
  def change
    add_column :domitories, :post_type, :string
  end
end
