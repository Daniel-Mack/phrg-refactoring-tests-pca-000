# frozen_string_literal: true

class Author < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :phone_number, length: { is: 10 }
end

FactoryBot.define do
  factory :author do
    name "Carmen"
    phone_number "1234567890"
  end
end
