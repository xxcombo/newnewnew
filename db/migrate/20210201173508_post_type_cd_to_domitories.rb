class PostTypeCdToDomitories < ActiveRecord::Migration[5.2]
  def change
        add_column :domitories, :post_type_cd, :integer, default: 0

  end
end
