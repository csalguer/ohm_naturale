class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :content
      t.string :pic_filename
      t.string :pic_content_type
      t.integer :pic_file_size
      t.datetime :pic_updated_at

      t.timestamps
    end
  end
end
