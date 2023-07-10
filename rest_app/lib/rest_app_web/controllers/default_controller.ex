defmodule RestAppWeb.DefaultController do
 use RestAppWeb, :controller
 def index(conn,_params) do
  text conn, "funciona"
 end

end
