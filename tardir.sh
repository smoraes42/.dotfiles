#!/bin/bash

echo "Enter a tarname( w/o .tar.gz)"
read tarname
tar -czvf $tarname.tar.gz $1
