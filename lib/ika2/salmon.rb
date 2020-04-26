# frozen_string_literal: true

module Ika2
  module Salmon
    class << self
      def now
        schedule = salmon_schedule.first
        if open?(schedule)
          schedule
        else
          {}
        end
      end

      def next
        schedules = salmon_schedule
        if open?(schedules[0])
          schedules[1]
        else
          schedules[0]
        end
      end

      private

      def salmon_schedule
        Ika2.get_schedule('coop', 'schedule')
      end

      def open?(schedule)
        DateTime.parse(schedule.start) < DateTime.now && DateTime.now < DateTime.parse(schedule.end)
      end
    end
  end
end
