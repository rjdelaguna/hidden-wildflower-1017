class Scientist < ApplicationRecord
  belongs_to :lab
  has_many :scientist_experiments
  has_many :experiments, through: :scientist_experiments

  def lab_name
    Lab.find(lab_id).name
  end
end