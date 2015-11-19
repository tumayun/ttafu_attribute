module TtafuAttribute
  extend ActiveSupport::Concern

  included do
    class_attribute :_ttafu_attributes, instance_predicate: false, instance_writer: false
    self._ttafu_attributes = []

    def _update_record(*args)
      return super unless self.record_timestamps

      begin
        if (changed & self._ttafu_attributes).empty?
          self.record_timestamps = false
        end
        super
      ensure
        self.record_timestamps = true
      end
    end
  end

  class_methods do
    def ttafu_attribute(*attributes)
      self._ttafu_attributes.concat attributes.map(&:to_s)
      attributes
    end
  end
end
