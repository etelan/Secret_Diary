class Diary

  attr_reader :locked, :entries

  def initialize
    @locked = true
    @entries = []
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

  def add_entry(entry)
    @entries << entry
  end

  def get_entries
    return @entries
  end
end
