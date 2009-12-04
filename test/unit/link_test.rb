require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  should_belong_to :list
  should_validate_presence_of :url
  should_ensure_length_in_range :url, 5..1000
end
