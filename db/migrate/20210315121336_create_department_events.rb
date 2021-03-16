class CreateDepartmentEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :department_events do |t|
      t.references :department, foreign_key: true
      t.references :event, foreign_key: true
      t.timestamps
    end
  end
end
