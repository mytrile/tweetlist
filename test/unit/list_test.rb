require 'test_helper'

class ListTest < ActiveSupport::TestCase
  should_have_many            :links
  should_validate_presence_of :name
  should_validate_presence_of :links
end
