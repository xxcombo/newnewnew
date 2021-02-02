class AddDomitoryIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :domitory, foreign_key: true
  end
end
