class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :server
      t.string :title, default: "None"
      t.string :role
      t.string :rank
      t.string :language, default: "English"
      t.boolean :free_agent, default: true

      t.timestamps
    end
  end
end
