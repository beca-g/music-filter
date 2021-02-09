class Music_Filter

  def filter(sound_wave, min_freq, max_freq)
    new_sound_wave = []
    sound_wave.each do |freq|
      if freq < min_freq
        new_sound_wave << min_freq
      else
        new_sound_wave << freq
      end
    end
    new_sound_wave
  end

end