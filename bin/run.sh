# run a jekyll website locally for verification.
# this calls jekyll serve in a docker container.
# run jekyll commands in a docker container to avoid local
# configuration issues.

docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=development -p 4000:4000 jekyll/jekyll:3.8 jekyll serve
