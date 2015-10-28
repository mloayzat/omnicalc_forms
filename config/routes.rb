Rails.application.routes.draw do

  get("/", { :controller => "calculations", :action => "loan_payment" })

  get("/loan_payment/results", { :controller => "calculations", :action => "loan_payment" })

  get("/loan_payment/new", { :controller => "calculations", :action => "loan_payment_form" })

  get("/word_count/new", { :controller => "calculations", :action => "word_count_form" })

  get("/word_count/results", { :controller => "calculations", :action => "word_count" })

end
