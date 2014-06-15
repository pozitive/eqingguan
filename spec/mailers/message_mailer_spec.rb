require "spec_helper"

describe MessageMailer do
  describe "send_email" do
    let(:mail) { MessageMailer.send_email }

    it "renders the headers" do
      mail.subject.should eq("Send email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
