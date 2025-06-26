set JEKYLL_VERSION=4.2.0
:docker image pull docker.io/jekyll/jekyll:%JEKYLL_VERSION%
:docker run --rm --volume="%CD%:/srv/jekyll" -it jekyll/jekyll sh -c "jekyll build"
:docker run --publish 4000:4000  --rm --volume="%CD%:/srv/jekyll" -it jekyll/jekyll:%JEKYLL_VERSION% sh -c "jekyll serve"
:docker run --publish 4000:4000  --rm --volume="%CD%:/srv/jekyll" -it jekyll/jekyll:%JEKYLL_VERSION% sh -c "jekyll serve"
docker run --publish 4000:4000  --rm --volume="%CD%:/srv/jekyll" -it jekyll/jekyll:%JEKYLL_VERSION% sh -c "jekyll serve --force_polling --livereload"
