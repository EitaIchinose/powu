class DepartmentUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :department_users
  end
end
