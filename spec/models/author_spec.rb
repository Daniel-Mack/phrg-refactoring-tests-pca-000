require 'rails_helper'

RSpec.describe Author, type: :model do
  it "is valid" do
    expect(build(:author)).to be_valid
  end

  it "is invalid with no name" do
    expect(build(:author, name: "")).to be_invalid
  end

  it "is invalid with a short number" do
    expect(build(:author, phone_number: 123)).to be_invalid
  end

  it "is invalid when non-unique" do
  create(:author, name: "Bob", phone_number: "1111111111")
  expect(build(:author, name: "Bob", phone_number: "1111111112")).to be_invalid
  end

  it "has a valid factory" do
    expect(build(:author)).to be_valid
  end
end
