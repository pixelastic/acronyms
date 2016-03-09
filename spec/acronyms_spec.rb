require 'spec_helper'

describe(String) do
  describe 'acronyms' do
    it 'should return an array' do
      # Given
      input = 'Grand Theft Auto'

      # When
      actual = input.acronyms

      # Then
      expect(actual).to be_instance_of(Array)
    end

    it 'should contain first letter of each word' do
      # Given
      input = 'Grand Theft Auto'

      # When
      actual = input.acronyms

      # Then
      expect(actual).to include('GTA')
    end

    it 'should return an empty array on empty string' do
      # Given
      input = ''

      # When
      actual = input.acronyms

      # Then
      expect(actual).to eql([])
    end

    it 'should split on dashes' do
      # Given
      input = 'Counter-Strike'

      # When
      actual = input.acronyms

      # Then
      expect(actual).to include('CS')
    end

    it 'should handle numerals' do
      # Given
      input = 'Left 4 Dead'

      # When
      actual = input.acronyms

      # Then
      expect(actual).to include('L4D')
    end

    it 'should keep roman numerals' do
      # Given
      input = 'Grand Theft Auto IV'

      # When
      actual = input.acronyms

      # Then
      expect(actual).to include('GTAIV')
    end

    it 'should convert roman numerals' do
      # Given
      input = 'Grand Theft Auto IV'

      # When
      actual = input.acronyms

      # Then
      expect(actual).to include('GTA4')
    end
  end
end
