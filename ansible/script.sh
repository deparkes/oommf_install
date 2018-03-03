#!/bin/bash -e

exec /vagrant/install_lubuntu.sh
exec /vagrant/install_oommf.sh $1 $2
