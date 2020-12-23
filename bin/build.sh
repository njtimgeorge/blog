# Build a jeckyll website.
# use docker to run jekyll build. -rm option removes the container to 
# save clutter

# run jekyll commands in a docker container to avoid local
# configuration issues.

docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" --env JEKYLL_ENV=production jekyll/jekyll:3.8 jekyll build
