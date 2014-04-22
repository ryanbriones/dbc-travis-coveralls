class CreateLongUrls < ActiveRecord::Migration
  def change
    create_table :long_urls do |t|
      t.string :normal_url
      t.text :long_url
      t.timestamps
    end
  end
end
