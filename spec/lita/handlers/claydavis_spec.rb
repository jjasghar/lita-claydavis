require "spec_helper"

describe Lita::Handlers::ClayDavis, lita_handler: true do

  it { is_expected.to route("claydavis") }
  it { is_expected.to route("(claydavis)") }
  it { is_expected.to route("claydavis gif") }
  it { is_expected.to route("claydavis youtube") }
  it { is_expected.not_to route("sheet") }
  it { is_expected.not_to route("sheeit") }
  it { is_expected.to route("sheeeit") }
  it { is_expected.to route("sheeeeeeeeit") }

  it "should respond with the correct gif url" do
    send_message("claydavis gif")
    expect(replies.last).to eq("http://i.imgur.com/nv9hR03.gif")
  end

  it "should respond with the correct youtube url" do
    send_message("claydavis youtube")
    expect(replies.last).to eq("https://youtu.be/1-ykugiRKyM")
  end

  it "should respond with the correct gif url" do
    send_message("claydavis")
    expect(replies.last).to eq("http://www.animoller.com/old-blog/images/2010/09/sheeeet.gif")
  end

  it "should respond with the correct gif url" do
    send_message("(claydavis)")
    expect(replies.last).to eq("http://www.animoller.com/old-blog/images/2010/09/sheeeet.gif")
  end

  it "should respond with the correct gif url" do
    send_message("sheeeeeit")
    expect(replies.last).to eq("http://i.imgur.com/nv9hR03.gif")
  end

  it "should not respond with the gif url" do
    send_message("sheeit")
    expect(replies.last).not_to eq("http://i.imgur.com/nv9hR03.gif")
  end

end
