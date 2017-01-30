require 'spec_helper'

describe ImageExample do
  let(:params) do
    {
      image_url: 'http://balls.com/some_image.png',
      output: 'Th]s 0nn was kind ot clo5a',
      truth: 'This one was kind of close',
    }
  end
  it 'works' do
    expect { ImageExample.create(params) }.to change { ImageExample.count }.from(0).to(1)
  end
end
