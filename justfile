build:
    #!/usr/bin/env sh
    set -e
    docker build -t restreamer-cc -f restreamer-custom/Dockerfile ./restreamer-custom

clean:
    docker rm -f $(docker ps -a | grep restreamer | awk {'print $1'})

run-current:
    #!/usr/bin/env sh
    set -e
    ./restreamer-start-current.sh

run-custom:
    #!/usr/bin/env sh
    set -e
    ./restreamer-start-custom.sh

run-generic:
    #!/usr/bin/env sh
    set -e
    ./restreamer-start-generic.sh

stop:
    #!/usr/bin/env sh
    set -e
    docker stop $(docker ps -a | grep restreamer | awk {'print $1'})
