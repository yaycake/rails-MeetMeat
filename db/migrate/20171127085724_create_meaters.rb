class CreateMeaters < ActiveRecord::Migration[5.0]
  def change
    create_table :meaters do |t|
      t.string :photo
      t.string :display_name
      t.string :user_category, default: "meeter"
      t.string :gender
      t.string :summary
      t.text :description
      t.string :hobbies
      t.string :education
      t.string :nationality
      t.integer :height
      t.integer :weight
      t.string :occupation
      t.string :location
      t.integer :price


      t.timestamps
    end
  end
end
