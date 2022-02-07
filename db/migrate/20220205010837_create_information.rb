class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :lesson_name
      t.string :creator
      t.string :description
      t.string :helpful_links

      t.timestamps
    end
  end
end
