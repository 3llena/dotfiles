#!/bin/sh

# end previous
pkill resh.sh
pkill clean.sh

# restart openbox
openbox --reconfigure
openbox --restart
