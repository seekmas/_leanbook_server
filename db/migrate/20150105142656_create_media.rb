class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :subject
      t.text :description
      t.string :medium_url

      t.timestamps
    end
  end
end
