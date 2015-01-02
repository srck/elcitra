require 'faker'

FactoryGirl.define do
  factory :article do
    title Faker::Name.name
    url "http://example.com"
    image "http://example.com"
    body "test contents"
  end
end
