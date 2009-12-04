class List < ActiveRecord::Base
  has_many              :links
  validates_presence_of :links
  validates_associated  :links
  validates_presence_of :name

  def link_attributes=(link_attr)
    link_attr.each do |attr|
      links.build(attr)
    end
  end

end
