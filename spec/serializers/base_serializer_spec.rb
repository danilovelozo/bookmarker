# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BaseSerializer, type: :serializer do
  subject { serialized_resource }

  let(:resource) { create(:user) }
  let(:serialized_resource) { described_class.new(resource).as_json }

  it { expect(subject[:id]).to eq(resource.id) }
  it { expect(subject[:created_at]).to eq(resource.created_at) }
  it { expect(subject[:updated_at]).to eq(resource.updated_at) }
end
