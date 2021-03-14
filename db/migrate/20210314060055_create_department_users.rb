class CreateDepartmentUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :department_users do |t|
      t.references :department, foreign_key: true
      t.references :user,       foreign_key: true
      t.timestamps
    end
  end
end
