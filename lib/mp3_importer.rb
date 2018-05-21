class MP3Importer

  attr_accessor :path
  @@all = []

  def initialize(file_path)
    @path = file_path
  end

  def files
    @list_of_filenames = Dir.glob[self.path + "/*.mp3"]   #Dir[self.path + "/*.mp3"]
    binding.pry
    @filenames = @list_of_filenames.each {|filename| filename.slice! self.path + "/"}
  end

  def import
    self.files.each {|filename| Song.new_by_filename(filename)}
  end

end
