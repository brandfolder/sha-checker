Rails.application.routes.draw do
  get '/:sha/:command_digest' => 'sha_with_commands#show'
  put '/:sha/:command_digest' => 'sha_with_commands#create'
end
