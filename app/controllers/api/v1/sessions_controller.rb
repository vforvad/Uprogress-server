# frozen_string_literal: true
class Api::V1::SessionsController < Api::ApiController
  def create
    form = Form::Session.new(nil, params[:user])
    if form.submit
      render json: { token: form.token }
    else
      render json: { errors: form.errors }, status: :unprocessable_entity
    end
  end

  def current
    if current_user
      render json: { current_user: current_user }
    else
      render json: { user: nil }, status: :unauthorized
    end
  end
end
