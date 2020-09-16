# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserSerializer, type: :serializer do
  subject { serialized_user }

  let(:user) { build(:user, email: 'user@test.com') }
  let(:serialized_user) { described_class.new(user).as_json }

  it { expect(subject[:email]).to eq('user@test.com') }
end
