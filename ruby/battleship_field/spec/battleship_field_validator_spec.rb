require 'battleship_field_validator'
require 'field_examples'
# frozen_string_literal: true

describe '.field_validator' do
  it 'should report an invalid field if no ships are input' do
    field = field_example('empty_field')
    expect(field_validator(field)).to eq('Nope, something is wrong!')
  end

  describe '.valid_ship' do
    it 'should return the ship length if it is valid and oriented horizontally' do
      field = field_example('valid_ship_4h')
      expect(valid_ship([0, 0], field)).to eq(4)
    end

    it 'should return the ship length if it is valid and oriented horizontally' do
      field = field_example('valid_ship_3v')
      expect(valid_ship([0, 0], field)).to eq(3)
    end

    it 'should return the ship length if it is valid and oriented horizontally' do
      field = field_example('valid_ship_2v')
      expect(valid_ship([2, 4], field)).to eq(2)
    end
    it 'should return nil if the ship is not valid' do
      field = field_example('invalid_ship_4h')
      expect(valid_ship([1, 1], field)).to eq(nil)
    end
  end
end

# Todo

# Function to check whether adjacent ships
# Fuction to check whether the correct ships are present
