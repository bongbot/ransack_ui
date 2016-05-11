module Ransack
  module Translate
    def self.default_interpolation(associated_class)
      puts "SAIGON"
      [
          associated_attribute(associated_class),
          ".attributes.#{@attr_name}".to_sym,
          I18n.translate(@attr_name)
      ]
          .flatten
    end

  end
end