require "./lib/music_filter.rb"

describe Music_Filter do
  subject(:music_filter) { described_class.new }
  describe "#filter" do
    it "should not modify the sound wave when within the min-max frequencies" do
      sound_wave = music_filter.filter([40,100,1000],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end

    it "should modify the sound wave when the min frequency is not met" do 
      sound_wave = music_filter.filter([10,100,1000],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end

    it "should modify the sound wave when the max frequency is not met" do 
      sound_wave = music_filter.filter([40,100,1050],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end

    it "should modift the sound wave when the min and max frequencies are not met" do 
      sound_wave = music_filter.filter([10,100,1050],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end

    it "should raise an error if no frequencies are given" do 
      expect { subject.filter([], 40, 100) }.to raise_error("Error: No frequencies supplied")
    end
  end
end