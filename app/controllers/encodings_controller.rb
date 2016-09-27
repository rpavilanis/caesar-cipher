class EncodingsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # ensures not trying to call things outside of application

  def index

  end

  def new
  end

  def show
    # params = {'message' => 'hello world', 'shift' => "s"}
    @message = Caesar.encode(params[:shift], params[:message])
  end
end
