require "right_aws_api"

class AmazonEndpoints

  def ec2_manage
    endpoint = 'https://ec2.us-east-1.amazonaws.com'
    ec2_manage ||= RightScale::CloudApi::AWS::EC2::Manager.new(self.api_key, self.secret_key, endpoint)
  end
end
