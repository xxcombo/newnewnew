class CreateDomitories < ActiveRecord::Migration[5.2]
  def change
    create_table :domitories do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
