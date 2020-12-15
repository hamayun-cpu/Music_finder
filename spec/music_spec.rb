require_relative '../lib/music'

describe Musics do
  context '#initialize' do
    let(:song) { Musics.new }

    it 'Equals to array' do
      expect(song.heavy).to eq(['https://www.youtube.com/watch?v=IaJ2UHiTa0o',
                                'https://www.youtube.com/watch?v=X6BOs1Ejpvw&ab_channel=WorkoutMusic',
                                'https://www.youtube.com/watch?v=yYnHa1G9_Xc',
                                'https://www.youtube.com/watch?v=5abamRO41fE',
                                'https://www.youtube.com/watch?v=d1cmyOaoZfc',
                                'https://www.youtube.com/watch?v=U5u9glfqDsc',
                                'https://www.youtube.com/watch?v=YcTCIMKeiNQ'])
    end

    it 'not Equals to array' do
      expect(song.light).not_to eq(['https://www.youtube.com/watch?v=IaJ2UHiTa0o',
                                    'https://www.youtube.com/watch?v=X6BOs1Ejpvw&ab_channel=WorkoutMusic',
                                    'https://www.youtube.com/watch?v=yYnHa1G9_Xc',
                                    'https://www.youtube.com/watch?v=5abamRO41fE',
                                    'https://www.youtube.com/watch?v=YcTCIMKeiNQ'])
    end
  end

  context '#list_pick' do
    let(:song) { Musics.new }
    it 'equals to string' do
      expect(song.list_pick(song.heavy).class).to eq(String)
    end
  end
end
