class RemoveEyepatchFromPatients < ActiveRecord::Migration[6.0]
  def change

    remove_column :patients, :eyepatch, :boolean
  end
end
