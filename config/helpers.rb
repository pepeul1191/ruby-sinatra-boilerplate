class MyApp < Sinatra::Base
  helpers do
    def load_css(csss)
      rpta = ''
      if defined? csss
        csss.each do |css|
          temp = '<link href="' + CONSTANTS[:STATIC_URL] + css + '.css" rel="stylesheet"/>'
          rpta = rpta + temp
        end
      end
      rpta
    end

    def load_js(jss)
      rpta = ''
      if defined? jss
        jss.each do |js|
          temp = '<script src="' + CONSTANTS[:STATIC_URL] + js + '.js" type="text/javascript"></script>'
          rpta = rpta + temp
        end
      end
      rpta
    end
  end
end
