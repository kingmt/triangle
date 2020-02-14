require_relative '../lib/triangle'

describe Triangle do
  describe 'generate_line' do
    [[1, '*'],
     [2, '*_*'],
     [3, '*_*_*'],
     [4, '*_*_*_*']].each do |count, expected|
       it "generates line #{count} wide" do
         expect(Triangle.generate_line count).to eq expected
       end
     end
  end

  describe 'generate_triangle' do
    it 'generates 2 line triangle' do
      expected = [' * ',
                  '*_*'].join '/n'
      expect(Triangle.generate_triangle 2).to eq expected
    end

    it 'generates 3 line triangle' do
      expected = ['  *  ',
                  ' *_* ',
                  '*_*_*'].join '/n'
      expect(Triangle.generate_triangle 3).to eq expected
    end

    it 'generates 4 line triangle' do
      expected = ['   *   ',
                  '  *_*  ',
                  ' *_*_* ',
                  '*_*_*_*'].join '/n'
      expect(Triangle.generate_triangle 4).to eq expected
    end
  end
end
