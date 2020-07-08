class CreateFruits < ActiveRecord::Migration[5.2]
  def change
    create_table :fruits do |t|
      t.text :content

      t.timestamps
    end
  end
end
