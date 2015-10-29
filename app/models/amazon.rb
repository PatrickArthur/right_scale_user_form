require "right_aws_api"

class Amazon < AmazonEndpoints
  include ActiveModel::Model
  attr_accessor :api_key, :secret_key, :region, :format

  def initialize(user_params)
    @api_key = user_params['api_key']
    @secret_key = user_params['secret_key']
    @region = user_params['region']
    @format = user_params['format']
    @account = user_params['account']
  end

  def describe_instances
    if @api_key.present? && @secret_key.present?
      self.ec2_manage.DescribeInstances
    end
  end
end
