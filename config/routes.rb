Rails.application.routes.draw do
  resources :employee_masters do
  	 resources :dtr_masters
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => "employee_masters#index"


end
