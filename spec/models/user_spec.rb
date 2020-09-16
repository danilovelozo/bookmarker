require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end

  describe '#authenticate' do
    let(:user) do
      create(:user, email: 'user@test.com', password: '12345678')
    end

    it 'returns user when the credentials are correct' do
      expect(User.authenticate(user.emal, user.password)).to eq(user)
    end

    it 'returns nil when the credentials are not correct' do
      expect(User.authenticate(user.email, 'wrong')).to be_nil
    end
  end
end
