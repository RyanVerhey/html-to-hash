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

  end

  def remove_extra_whitespace_from_html_str
    @html_str = @html_str.gsub(/>\s*</, "><").gsub(/\n+/, " ").strip
  end

  module Tag
    # Any logic relating to tags
  end

  module Attribute
    # Any logic relating to attributes
  end

  module Comment
    # Any logic relating to comments
  end

end

p HtmlToHash.parse(:html => HTML_TEST_STR)
