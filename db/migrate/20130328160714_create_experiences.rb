class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :media_url

      t.timestamps
    end
  end
end
