class CreateJoboffers < ActiveRecord::Migration[6.0]
  def change
    create_table :joboffers do |t|
      t.string :job_title
      t.string :salary
      t.string :minimum_japaneseskill
      t.string :job_description
      t.string :shift
      t.string :place

      t.timestamps
    end
  end
end
