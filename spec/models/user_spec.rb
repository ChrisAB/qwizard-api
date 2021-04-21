# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid if username, email, password and hat are present' do
    user = described_class.new(username: "Tester", email: "tester@test.com", password: "Tester", hat: 1)
    expect(user).to be_valid
  end

  it 'is invalid if username is missing' do
    user = described_class.new(email: "tester@test.com", password: "Tester", hat: 1)
    expect(user).not_to be_valid
  end

  it 'is invalid if email is missing' do
    user = described_class.new(username: "Tester", password: "Tester", hat: 1)
    expect(user).not_to be_valid
  end

  it 'is invalid if email is missing' do
    user = described_class.new(username: "Tester", password: "Tester", hat: 1)
    expect(user).not_to be_valid
  end

  it 'is invalid if password is missing' do
    user = described_class.new(username: "Tester", email: "tester@test.com", hat: 1)
    expect(user).not_to be_valid
  end

  it 'is valid if hat is missing' do
    user = described_class.new(username: "Tester", email: "tester@test.com", password: "Tester")
    expect(user).to be_valid
  end

  it 'is invalid if password less than 6 characters' do
    user = described_class.new(username: "Tester", email: "tester@test.com", password: "test", hat: 1)
    expect(user).not_to be_valid
  end
end
