require 'spec_helper'

describe Address do
  it { should belong_to :contact }
  it { should validate_presence_of :address }
end
