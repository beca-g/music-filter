require "./lib/music_filter.rb"

describe Music_Filter do
  describe "#filter" do
    it "should not modify the sound wave when within the min-max frequenices" do
      music_filter = Music_Filter.new
      sound_wave = music_filter.filter([40,100,1000],40,1000)
      expect(sound_wave).to eq [40,100,1000] 
    end
  end
end