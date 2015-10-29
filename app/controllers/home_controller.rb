class HomeController < ApplicationController

  def set_instance
    amazon_params(hash = Hash.new)
    @amazon = Amazon.new(hash)
    @amazon_inst = @amazon.describe_instances
  end

  private

  def amazon_params(input)
    input['api_key'] = params[:api_key]
    input['secret_key'] = params[:secret_key]
    input['region'] = params[:region]
    input['format'] = params[:format]
    input['account'] = params[:account]
  end

end
