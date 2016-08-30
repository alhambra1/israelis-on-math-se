class CreateStackexchangeUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :stackexchange_users do |t|

			t.json :badge_counts
			t.string :account_id
			t.boolean :is_employee
			t.datetime :last_modified_date
			t.datetime :last_access_date
			t.integer :reputation_change_year
			t.integer :reputation_change_quarter
			t.integer :reputation_change_month
			t.integer :reputation_change_week
			t.integer :reputation_change_day
			t.integer :reputation
			t.datetime :creation_date
			t.string :user_type
			t.integer :user_id
			t.string :website_url
			t.string :link
			t.string :profile_image
			t.string :display_name

      t.timestamps
    end
  end
end
