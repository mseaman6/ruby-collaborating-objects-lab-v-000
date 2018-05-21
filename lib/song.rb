class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.artist_name=(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end

  def self.new_by_filename(file_name)
    song = self.new(file_name.split(" - ")[1])
    artist = file_name.split(" - ")[0]
    song
  end

end
