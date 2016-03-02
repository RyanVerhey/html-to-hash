require 'awesome_print'
require_relative 'test_data'

class HtmlToHash

  HTML_REGEXP = /<(?<tag>\w+)(?<attrs>(\s\w+(=(("|')(\w|\s)*("|')))?)+)*\s*\/?>((?<data>.*)<\/\k<tag>>)?/

  def initialize(args = {})
    @html_str = args.fetch(:html) { "" }
    @hash = {}
    remove_extra_whitespace_from_html_str
  end

  def self.parse(args = {})
    new(args).send(:parse_html_str)
  end

  protected

  def parse_html_str
    array_of_elements = @html_str.scan(HTML_REGEXP)
    tag = array_of_elements.first[0]
    attributes = Attribute.html_attributes_str_to_hash array_of_elements.first[1]
    inner_html = array_of_elements.first[2]
    { tag: tag, attributes: attributes, inner_html: inner_html }
  end

  def remove_extra_whitespace_from_html_str
    @html_str = @html_str.gsub(/>\s*</, "><").gsub(/\n+/, " ").strip
  end

  module Tag
    # Any logic relating to tags
  end

  module Attribute
    def self.html_attributes_str_to_hash(str)
      attrs_str = str.to_s.strip
      attrs_hash = {}

      attrs_array = attrs_str.split " "
      attrs_array.each do |attr_pair|
        attribute, value = attr_pair.split "="
        value = value.to_s.gsub /("|')/, ""
        attrs_hash[attribute.to_sym] = value
      end

      attrs_hash
    end
  end

  module Comment
    # Any logic relating to comments
  end

end

p HtmlToHash.parse(:html => HTML_TEST_STR)
