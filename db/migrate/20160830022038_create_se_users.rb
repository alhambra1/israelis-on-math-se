class CreateSeUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :se_users do |t|

			t.jsonb :user

      t.timestamps
    end
  end
end
