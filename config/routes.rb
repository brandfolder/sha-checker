Rails.application.routes.draw do
  root to: 'application#home'
  get '/:sha/:command_digest' => 'sha_with_commands#show'
  put '/:sha/:command_digest' => 'sha_with_commands#create'
end
