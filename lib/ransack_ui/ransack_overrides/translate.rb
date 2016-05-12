module Ransack
  module Translate
    def self.default_interpolation(associated_class)
      translated_attr = I18n.translate("ransack." + @attr_name)
      if translated_attr.start_with?("translation missing")
        puts "TTT:FIELD: " + ("ransack." + @attr_name).inspect
      end

      [
          associated_attribute(associated_class),
          ".attributes.#{@attr_name}".to_sym,
          I18n.translate("ransack." + @attr_name)
      ].flatten
    end

  end
end