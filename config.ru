#config.ru
require 'rack'
class MiPrimeraWebApp
    def call(env)
        [200, {'Content-Type' => 'text/html'}, ['<p>Lorem Ipsum in Dolor set amet</p>']]
    end
end
run MiPrimeraWebApp.new