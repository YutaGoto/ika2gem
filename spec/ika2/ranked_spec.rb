# frozen_string_literal: true

RSpec.describe Ika2::Ranked do
  describe 'now' do
    it 'return ranked rule' do
      expect(%w[ガチエリア ガチホコバトル ガチヤグラ ガチアサリ]).to include Ika2::Ranked.now.rule
    end
  end
end
