class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Direct.new(self.path).each do |file|
    if
      file.length > 4
      files << file
      
end