class AddMatchingColumnsToJobs < ActiveRecord::Migration[7.2]
  def change
    add_column :jobs, :category, :string
    add_column :jobs, :starts_at, :datetime
    add_column :jobs, :ends_at, :datetime
  end
end
