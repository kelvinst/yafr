module Yafr
  def self.by_regex dir, regex
    entries = Dir.glob("#{dir}/**")
    to_delete, to_continue = entries.partition do |name|
      !['.', '..'].include?(File.basename) && name =~ regex
    }
    File.delete(to_delete)
  end
end
