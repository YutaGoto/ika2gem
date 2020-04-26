# frozen_string_literal: true

RSpec.describe Ika2::Truf do
  describe 'now' do
    it 'return Truf rule' do
      expect(Ika2::Truf.now.rule).to eq 'ナワバリバトル'
    end
  end
end
