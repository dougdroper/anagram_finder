class FileHandler
  DICTIONARY = 'public/data/dictionary.txt'

  def initialize(file)
    time = Time.now
    File.open(DICTIONARY, 'a') { |f| f.write(File.read(file.tempfile.to_path.to_s)) }
    Time.now - time
  end
end