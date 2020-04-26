# frozen_string_literal: true

RSpec.describe Ika2::League do
  describe 'now' do
    it 'return league rule' do
      expect(%w[ガチエリア ガチホコバトル ガチヤグラ ガチアサリ]).to include Ika2::League.now.rule
    end
  end
end
