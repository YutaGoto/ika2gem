# frozen_string_literal: true

module Ika2
  module Salmon
    class << self
      def now
        schedule = get_schedule.first
        if DateTime.parse(schedule.start) < DateTime.now && DateTime.now < DateTime.parse(schedule.end)
          schedule
        else
          {}
        end
      end

      def next
        schedules = get_schedule
        if DateTime.parse(schedules[0].start) < DateTime.now && DateTime.now < DateTime.parse(schedules[0].end)
          schedules[1]
        else
          schedules[0]
        end
      end

      private

      def get_schedule
        Ika2.get_schedule('coop', 'schedule')
      end
    end
  end
end
