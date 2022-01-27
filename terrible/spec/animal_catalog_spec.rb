require 'animal_catalog'

describe AnimalCatalog do
  subject(:catalog) { described_class.new }

  describe '#sound' do
    it 'returns the sound of the given animal' do
      expect(catalog.sound(:dog)).to eq "woof"
      expect(catalog.sound(:cat)).to eq "meow"
      expect(catalog.sound(:bird)).to eq "chirp"
      expect(catalog.sound(:cow)).to eq "moo"
    end

    it 'raises an error given an unrecognised animal' do
      expect { catalog.sound(:garbage) }.to raise_error "Unrecognised animal"
    end
  end

  describe '#number_of_legs' do
    it 'returns the number of legs of the given animal' do
      expect(catalog.number_of_legs(:dog)).to eq 4
      expect(catalog.number_of_legs(:cat)).to eq 4
      expect(catalog.number_of_legs(:bird)).to eq 2
      expect(catalog.number_of_legs(:cow)).to eq 4
    end

    it 'raises an error given an unrecognised animal' do
      expect { catalog.number_of_legs(:garbage) }.to raise_error "Unrecognised animal"
    end
  end

  describe '#number_of_wings' do
    it 'returns the number of wings of the given animal' do
      expect(catalog.number_of_wings(:dog)).to eq 0
      expect(catalog.number_of_wings(:cat)).to eq 0
      expect(catalog.number_of_wings(:bird)).to eq 2
      expect(catalog.number_of_wings(:cow)).to eq 0
    end

    it 'raises an error given an unrecognised animal' do
      expect { catalog.number_of_wings(:garbage) }.to raise_error "Unrecognised animal"
    end
  end

  describe '#demeanour' do
    it 'returns the demeanour of the given animal' do
      expect(catalog.demeanour(:dog)).to eq "Lary"
      expect(catalog.demeanour(:cat)).to eq "Placid"
      expect(catalog.demeanour(:bird)).to eq "Placid"
      expect(catalog.demeanour(:cow)).to eq "Placid"
    end

    it 'raises an error given an unrecognised animal' do
      expect { catalog.demeanour(:garbage) }.to raise_error "Unrecognised animal"
    end
  end
end
