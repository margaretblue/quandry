class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.text :question
      t.text :answer

      t.timestamps
    end
  end
end
