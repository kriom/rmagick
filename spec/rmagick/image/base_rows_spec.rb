RSpec.describe Magick::Image, '#base_rows' do
  it 'works' do
    img = described_class.new(100, 100)

    expect { img.base_rows }.not_to raise_error
    expect(img.base_rows).to eq(0)
    expect { img.base_rows = 1 }.to raise_error(NoMethodError)
  end
end
