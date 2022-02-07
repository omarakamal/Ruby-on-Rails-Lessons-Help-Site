class CreateTips < ActiveRecord::Migration[7.0]
  def change
    create_table :tips do |t|
      t.string :lesson_name
      t.string :creator
      t.text :description
      t.string :helpful_links

      t.timestamps
    end
  end
end
