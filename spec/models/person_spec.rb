require 'spec_helper'

describe Person do
  should_validate_length_of :name, :within => 3..40
  should_allow_values_for :email, "sarah@foo.com"
  should_not_allow_values_for :email, "sarah", "@foo", "whatever.com"
  should_have_many :addresses
end
