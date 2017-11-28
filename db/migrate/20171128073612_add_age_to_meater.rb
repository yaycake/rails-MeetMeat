class AddAgeToMeater < ActiveRecord::Migration[5.0]
  def change
    add_column :meaters, :age, :integer
  end
end
