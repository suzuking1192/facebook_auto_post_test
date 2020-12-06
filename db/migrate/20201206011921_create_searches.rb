class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :minimum_japanese
      t.integer :min_salary
      t.integer :max_salary

      t.timestamps
    end
  end
end
