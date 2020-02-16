RSpec.describe Magick::Image, "#border" do
  it "works" do
    img = described_class.new(20, 20)

    expect { img.border(2, 2, 'red') }.not_to raise_error
    expect { img.border!(2, 2, 'red') }.not_to raise_error
    res = img.border(2, 2, 'red')
    expect(res).to be_instance_of(described_class)
    img.freeze
    expect { img.border!(2, 2, 'red') }.to raise_error(FreezeError)
  end
end
