class Music_Filter
  attr_reader :new_sound_wave

  def initialize
    @new_sound_wave = []
  end

  def filter(sound_wave, min_freq, max_freq)
    filter_function(sound_wave, min_freq, max_freq)
  end 

  private

  def filter_function(sound_wave, min_freq, max_freq)
    sound_wave.each do |freq|
      if freq < min_freq
        new_sound_wave << min_freq
      elsif freq > max_freq
        new_sound_wave << max_freq
      else
        new_sound_wave << freq
      end
    end
    new_sound_wave
  end
end