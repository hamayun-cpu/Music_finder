# rubocop: disable Style/FrozenStringLiteralComment,Metrics/MethodLength

# class for music recomendations
class Musics
  attr_reader :heavy, :party, :peace, :light, :motivational, :love
  def initialize
    @heavy = ['https://www.youtube.com/watch?v=IaJ2UHiTa0o',
              'https://www.youtube.com/watch?v=X6BOs1Ejpvw&ab_channel=WorkoutMusic',
              'https://www.youtube.com/watch?v=yYnHa1G9_Xc',
              'https://www.youtube.com/watch?v=5abamRO41fE',
              'https://www.youtube.com/watch?v=d1cmyOaoZfc',
              'https://www.youtube.com/watch?v=U5u9glfqDsc',
              'https://www.youtube.com/watch?v=YcTCIMKeiNQ']

    @party = ['https://www.youtube.com/watch?v=uFAWIKVThjA',
              'https://www.youtube.com/watch?v=94MTVSZ1nTc',
              'https://www.youtube.com/watch?v=L4VgcEYG6tQ',
              'https://www.youtube.com/watch?v=QoCajbBFTxk',
              'https://www.youtube.com/watch?v=7EBxB5sqhoA',
              'https://www.youtube.com/watch?v=Elt0ZQo5bHY',
              'https://www.youtube.com/watch?v=jfrdntUFX5A']

    @peace = ['https://www.youtube.com/watch?v=s0WCU3VVISE',
              'https://www.youtube.com/watch?v=sOG6xAhI4lA',
              'https://www.youtube.com/watch?v=lFcSrYw-ARY',
              'https://www.youtube.com/watch?v=1ZYbU82GVz4',
              'https://www.youtube.com/watch?v=CcsUYu0PVxY',
              'https://www.youtube.com/watch?v=V1RPi2MYptM',
              'https://www.youtube.com/watch?v=V1RPi2MYptM']

    @light = ['https://www.youtube.com/watch?v=9Rb9RSR1hFA',
              'https://www.youtube.com/watch?v=ztyx81cZRbc',
              'https://www.youtube.com/watch?v=pWAb0uONBeE',
              'https://www.youtube.com/watch?v=lno8SMLxS2U',
              'https://www.youtube.com/watch?v=Ceqpno_zr6c',
              'https://www.youtube.com/watch?v=JfTrNF2pBLQ',
              'https://www.youtube.com/watch?v=PeQSCzrByo4']

    @motivational = ['https://www.youtube.com/watch?v=TqmDn2URAvc',
                     'https://www.youtube.com/watch?v=tzBEpdfCRqw',
                     'https://www.youtube.com/watch?v=J0BPoofmPkw',
                     'https://www.youtube.com/watch?v=WDxMas784iY',
                     'https://www.youtube.com/watch?v=a1CwygQ13VI',
                     'https://www.youtube.com/watch?v=nTLpGRCV22Y',
                     'https://www.youtube.com/watch?v=HEf_xrgmuRI']

    @love = ['https://www.youtube.com/watch?v=w-ZIBAbkPdI',
             'https://www.youtube.com/watch?v=WaNXRDuABFs',
             'https://www.youtube.com/watch?v=uwIIVeGq4Xg',
             'https://www.youtube.com/watch?v=l5DW73AyKIE',
             'https://www.youtube.com/watch?v=yRB0xbKDebo',
             'https://www.youtube.com/watch?v=450p7goxZqg',
             'https://www.youtube.com/watch?v=ta-YpczFDaI']
  end

  def list_pick(musics)
    result = musics.sample
    result
  end
end

# rubocop: enable Style/FrozenStringLiteralComment,Metrics/MethodLength
