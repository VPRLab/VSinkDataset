#!/bin/bash

##################################
# Author:   Daoyuan
# Since:    131120
##################################

inputF=$1
APIMap=APIMap-$inputF

grep "APIMap: " $inputF > $APIMap

echo -n "All: "
grep -c "Sink_" $APIMap

echo -n "Src: "
grep -c "Sink_SRC" $APIMap

echo -n "DIRECTByPara: "
grep -c "Sink_DIRECTByPara" $APIMap

echo -n "Input: "
grep -c "Sink_SrcSend" $APIMap

echo -n "Public: "
grep -c "Sink_PUBLIC" $APIMap

echo -n "DIRECT: "
grep "Sink_DIRECT" $APIMap | grep -c -v -e "Sink_DIRECTByPara"
