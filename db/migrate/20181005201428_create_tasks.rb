class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :content
      t.references :user, forein_key: true

      t.timestamps
    end
  end
end
