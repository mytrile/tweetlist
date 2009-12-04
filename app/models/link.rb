class Link < ActiveRecord::Base
  belongs_to            :list

  validates_presence_of :url
  validates_length_of   :url, :within => 5..1000
  validates_format_of   :url, :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix

end
