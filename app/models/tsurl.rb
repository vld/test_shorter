class Tsurl < ActiveRecord::Base
  attr_accessible :full, :log, :short
  after_create :create_short

  def add_to_log(request)
    self.log += "Access from #{request.remote_ip} at #{Time.now}\n"
    self.save
  end
  private

  def create_short
    self.log = "Created at #{Time.now}\n"
    self.short = self.id.to_s(27).tr("0-9a-q", "a-z")
    self.save
  end
end
