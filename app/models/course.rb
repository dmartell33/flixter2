class Course < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :user
  has_many :sections
  has_many :enrollments


  


  def free?
    cost.zero?
  end

  def premium?
    ! free?
  end
end
