class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :email
      t.text :content


    
    end
  end
end
