class AddJobIdToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :job_id, :integer
  end
end
