class RenameAssigmentsToAssignments < ActiveRecord::Migration[5.2]
  def change
    rename_table :assignments, :assignments
  end
end
