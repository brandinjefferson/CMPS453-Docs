class RequestApprovalsController < ApplicationController
  def destroy
    UserNotifer.request_denied(@request).deliver_now!
    @request = Request.find(params[:id])
    if @request.present?
      @request.destroy
    end
    redirect_to requestqueue_url
  end
end