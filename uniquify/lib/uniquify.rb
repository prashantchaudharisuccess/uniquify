module Uniquify
  require 'fog'
  def self.uniquify(access_token, secret, name)
    connection = Fog::Storage.new({ :provider => 'AWS', :aws_access_key_id => access_token, :aws_secret_access_key => secret})
    directory = connection.directories.create(:key => "#{name}", :public => true)
  end
end
