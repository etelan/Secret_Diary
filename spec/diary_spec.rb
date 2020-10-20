require 'diary'

RSpec.describe Diary do

  describe '#unlock' do

    it 'Changes locked instance variable to unlock' do
      subject.unlock
      expect(subject.locked).to eq false
    end
  end

  describe '#lock' do

    it 'Changes locked instance variable to lock' do
      subject.lock
      expect(subject.locked).to eq true
    end
  end

  describe '#add_entry' do

    it 'Adds string to entry array' do
      subject.add_entry("dear diary i commit major war crime beep boop")
      expect(subject.entries[0]).to eq "dear diary i commit major war crime beep boop"
    end
  end

  describe '#get_entries' do

    it 'returns array' do
      subject.add_entry("dear diary i commit major war crime beep boop")
      subject.add_entry("aaaaaaaaaaa")
      expect(subject.entries).to eq ["dear diary i commit major war crime beep boop", "aaaaaaaaaaa"]
    end
  end

end
