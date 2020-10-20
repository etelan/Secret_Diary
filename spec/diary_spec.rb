require 'diary'

RSpec.describe Diary do

  describe '#add_entry' do

    it 'Adds string to entry array if unlocked' do

      subject.padlock.unlock
      subject.add_entry("dear diary i commit major war crime beep boop")
      expect(subject.entries[0]).to eq "dear diary i commit major war crime beep boop"
    end

    it 'Error if locked' do
      expect{subject.add_entry("a")}.to raise_error "Diary is Locked"
    end

  end

  describe '#get_entries' do

    it 'returns array' do
      subject.padlock.unlock
      subject.add_entry("dear diary i commit major war crime beep boop")
      subject.add_entry("aaaaaaaaaaa")
      expect(subject.entries).to eq ["dear diary i commit major war crime beep boop", "aaaaaaaaaaa"]
    end

    it 'Error if locked' do
      expect{subject.get_entries}.to raise_error "Diary is Locked"
    end
  end

end

RSpec.describe Lock do

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
end
