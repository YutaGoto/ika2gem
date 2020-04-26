# frozen_string_literal: true

module Ika2
  module Ranked
    class << self
      def now
        get_schedule.first
      end

      def next
        get_schedule('next').first
      end

      private

      def get_schedule(time = 'now')
        Ika2.get_schedule('gachi', time)
      end
    end
  end
end
