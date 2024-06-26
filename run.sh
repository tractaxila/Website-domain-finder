#!/bin/bash

url=$1

if [ ! -d "$url" ];then
mkdir $url
fi
if [ ! -d "$url/recon" ];then
mkdir $url/recon
fi

echo "finding subdomains from assetfinder...."
assetfinder $url >> $url/recon/assets.txt
cat $url/recon/assets.txt | grep $1 >>$url/recon/asset_finder.txt
rm $url/recon/assets.txt

echo "Finding subdomains from amass..."
amass enum -d $url >> $url/recon/f1..txt
sort -u $url/recon/f1.txt >> $url/recon/amass_finder.txt
rm $url/recon/f1.txt