#!/bin/bash 

[ $DEBUG ] && set -x

cd /opt/redis-browser


if [ $ENABLE_AUTH != "" ];then

cat >> /opt/redis-browser/lib/redis-browser.rb << END
RedisBrowser::Web.class_eval do
  use Rack::Auth::Basic, "Protected Area" do |username, password|
    username == 'foo' && password == 'bar'
  end
end
END

fi

sleep ${PAUSE:-0}

./bin/redis-browser -B 0.0.0.0 -U redis://${REDIS_HOST}:${REDIS_PORT}/0
