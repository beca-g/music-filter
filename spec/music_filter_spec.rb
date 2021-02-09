require "./lib/music_filter.rb"

describe Music_Filter do
  subject(:music_filter) { described_class.new }
  describe "#filter" do
    it "should not modify the sound wave when within the min-max frequenices" do
      sound_wave = music_filter.filter([40,100,1000],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end

    it "should modify the sound wave with the min frequancy is not met" do 
      sound_wave = music_filter.filter([10,100,1000],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end
  end
end