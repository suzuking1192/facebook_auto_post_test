class Joboffer < ApplicationRecord
  has_one_attached:image

  def self.search(search)
    if search
      where(["job_title LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
