RSpec.describe "homes/_events.html.erb" do
  context "when the next event is unknown" do
    it "display that the upcoming event is unknown" do
      assign(:upcoming_event, UnknownMeetupEvent.new)

      render

      expect(rendered).to match("There are no upcoming events.")
    end
  end
end