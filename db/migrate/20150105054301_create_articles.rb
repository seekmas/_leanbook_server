class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :subject
      t.string :preview
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
