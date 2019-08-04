#! /bin/sh
mkdir temp_web
git config --global user.name "buffermaker"
git config --global user.email "www.cctv1688@qq.com"

TRAVIS_TAG='v1.0'

# release
if [ "$TRAVIS_TAG" ]; then
  # build tag
  cd temp_web
  git clone https://github.com/BufferMaker/buffermaker.github.io.git && cd buffermaker.github.io
  git tag $TRAVIS_TAG -m "[build] $TRAVIS_TAG"
  git push origin $TRAVIS_TAG
  cd ../..

  # build site
  npm run build:site
  cd temp_web/buffermaker.github.io
  git checkout gh-pages
  # build sub folder
  echo $TRAVIS_TAG

  SUB_FOLDER='v1.0'
  TRAVIS_COMMIT_MSG="[deploy] $(git log --format='%h - %B' --no-merges -n 1)"
  mkdir $SUB_FOLDER
  rm -rf *.js *.css *.map static
  rm -rf $SUB_FOLDER/**
  cp -rf ../../dist/** .
  cp -rf ../../dist/** $SUB_FOLDER/
  git add -A .
  git commit -m "$TRAVIS_COMMIT_MSG"
  git push origin gh-pages
  cd ../..
  rm -rf temp_web

  echo "DONE, Bye~"
  exit 0
fi


