require 'rails_helper'

RSpec.describe Article, :type => :model do
  let(:article) { FactoryGirl.create(:article) }
end
