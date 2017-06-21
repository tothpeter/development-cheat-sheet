describe 'Subject' do
  it "does not generate N+1 queries" do
    SQLRequestCounter.attach_to :active_record

    # Setup

    SQLRequestCounter.reset_count

    expect(SQLRequestCounter.count(User)).to eq(0)

    # Exercise

    expect(SQLRequestCounter.count(User)).to eq(1)
  end

end
