class DepartmentEvent < ApplicationRecord
  belongs_to :event
  belongs_to :department
end
