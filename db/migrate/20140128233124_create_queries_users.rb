class CreateQueriesUsers < ActiveRecord::Migration
  def change
    create_table :queries_users do |t|
      t.integer :query_id
      t.integer :user_id
    end
  end
end
