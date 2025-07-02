:docker run --rm  --volume="$PWD:/srv/jekyll:Z"   --publish [::1]:4000:4000   jekyll/jekyll   jekyll serve

:docker run --rm  --volume="C:\Sources\git\Other\website3dcopy:/srv/jekyll:Z"   --publish [::1]:4000:4000   jekyll/jekyll   jekyll serve
:docker run --rm  --volume="C:\\Sources\\git\\Other\\website3dcopy:/srv/jekyll:Z"   --publish [::1]:4000:4000   jekyll/jekyll   jekyll serve --trace 




set site_name=my-blog
docker run --rm --volume="%CD%:/srv/jekyll" -it jekyll/jekyll sh -c "chown -R jekyll /usr/gem/ && jekyll new %site_name%" && cd %site_name%