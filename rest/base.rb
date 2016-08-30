
module REST
  class Base < Grape::API
    format :json
    prefix :api

    get { "hello world" }
  end
end
