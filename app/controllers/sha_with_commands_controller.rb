class ShaWithCommandsController < ApplicationController
  rescue_from ShaWithCommand::NotFoundError, with: :not_found

  def create
    ShaWithCommand.create sha: params[:sha], command_digest: params[:command_digest]
    render text: 'created', status: :created
  end

  def show
    ShaWithCommand.find_by! sha: params[:sha], command_digest: params[:command_digest]
    render text: 'found', status: :ok
  end

  private

  def not_found
    render text: 'not found', status: :not_found
  end

end
