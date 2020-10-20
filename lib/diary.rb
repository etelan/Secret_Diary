class Diary

  attr_reader :locked, :entries, :padlock

  def initialize
    @locked = true
    @entries = []
    @padlock = Lock.new
  end

  def add_entry(entry)
    if @padlock.locked then raise "Diary is Locked" else @entries << entry end
  end

  def get_entries
    if @padlock.locked then raise "Diary is Locked" else return @entries end
  end
end

class Lock

  attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end
end
