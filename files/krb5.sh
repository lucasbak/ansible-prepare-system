#!/bin/bash
uid=`id -u $USER`
export KRB5CCNAME="FILE:/tmp/krbrcc_$uid"