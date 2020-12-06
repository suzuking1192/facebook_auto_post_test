class ChangeDataSalaryToJoboffers < ActiveRecord::Migration[6.0]
  def change
    change_column :joboffers, :salary, :integer
  end
end
