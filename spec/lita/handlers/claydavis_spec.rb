require "spec_helper"

describe Lita::Handlers::ClayDavis, lita_handler: true do

  it { is_expected.to route("claydavis gif") }
  it { is_expected.to route("claydavis youtube") }

  it "should respond with the correct gif url" do
    send_message("claydavis gif")
    expect(replies.last).to eq("http://i.imgur.com/nv9hR03.gif")
  end

  it "should respond with the correct youtube url" do
    send_message("claydavis youtube")
    expect(replies.last).to eq("https://youtu.be/1-ykugiRKyM")
  end

end
