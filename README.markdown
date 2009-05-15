# Web Search Plugin

This plugins allows you to query google search engine from Rails.
So far, only Google is supported.


Simple example on how to query Google:

##your model
  **#link.rb**
     class Link < ActiveRecord::Base
       web_search
     end

in the console: **ruby script/console**

>> Link.google_search(:query => "tuquito")

=> #<Google::Response:0xb734d3cc @results=[{:domain=>"www.tuquito.org.ar", :content=>"Proyecto Linux de Tucumán, datos y temas relacionados al proyecto, foros y ayuda   para usuarios de la distribución y descargas.", :title=>"Tuquito 3", :cache_url=>"http://www.google.com/search?q=cache:4NZXKc3gQA8J:www.tuquito.org.ar", :url=>"http://www.tuquito.org.ar/"}, {:domain=>"en.wikipedia.org", :content=>"Oct 11, 2008 <b>...</b> <b>Tuquito</b> is a Debian-based operating system created in Tucumán, Argentina, by   Ignacio Díaz, Chris Arenas and Mauro Torres, students of The <b>...</b>", :title=>"Tuquito - Wikipedia, the free encyclopedia", :cache_url=>"http://www.google.com/search?q=cache:a1xAEvHHujUJ:en.wikipedia.org", :url=>"http://en.wikipedia.org/wiki/Tuquito"}, {:domain=>"www.slideshare.net", :content=>"<b>Tuquito</b> 3 Nuevo Diseño En varios idiomas (Ingles,Portugues y Español) Interfaces mas intuitivas Optimizado para la conectividad(wifi, <b>...</b>", :title=>"Tuquito 3", :cache_url=>"http://www.google.com/search?q=cache:T8VfO-4iyioJ:www.slideshare.net", :url=>"http://www.slideshare.net/chebyte/tuquito-3"}, {:domain=>"www.olpcnews.com", :content=>"OLPC <b>Tuquito</b>&#39;s team began to work at 1st January of 2007, with the knowledge   acquisition about the project One Laptop Per Child and then with development <b>...</b>", :title=>"OLPC Tuquito Project Progress in Argentina - OLPC News", :cache_url=>"http://www.google.com/search?q=cache:eoGfDNbaZ8kJ:www.olpcnews.com", :url=>"http://www.olpcnews.com/countries/argentina/olpc_tuquito_project_argentina.html"}], @status=200, @size=4, @query="tuquito">



A google search returns a Response instance. Call `results` on the response to get the array on result.
A Result is a simple hash object with few keys available:

* title       Title of the result
* url         Url of the result
* domain      Root url of the result
* content     Snippet of the result content
* cache\_url  Google cache url


By default, only the 4 top results get retrieved, you can specify the exact amount of results you want by passing the size argument.
    Model.google_search(:query => "Tuquito", :size => 10)

## TODO

* Full support of the google api
* support more search engines (Yahoo, live etc...)

Copyright (c) 2009 [chebyte - maurotorres@gmail.com], released under the MIT license

