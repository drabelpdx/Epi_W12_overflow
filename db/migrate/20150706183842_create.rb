class Create < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.string :body

      t.timestamps
    end
  end
end
