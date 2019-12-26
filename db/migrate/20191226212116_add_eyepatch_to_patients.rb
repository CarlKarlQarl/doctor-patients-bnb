class AddEyepatchToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :eyepatch, :boolean
  end
end
