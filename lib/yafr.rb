class Yafr
  def self.by_regex(regex)
    directories, files = Dir["**/*"].select { |f| f.match regex }.partition { |f| File.directory? f }

    File.delete(*files)
    directories.reverse_each { |dir| Dir.rmdir(dir) }
  end
end
