class Machine < ApplicationRecord
  belongs_to :machine_type
  def to_s
    machine_type
  end
end
