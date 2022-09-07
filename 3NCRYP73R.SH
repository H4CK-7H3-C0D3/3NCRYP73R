#!/bin/bash


                                                                        
    
rset='\033[0m'
red='\033[1;31m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'

echo -e "$blue Enter your passphrase in Clear text format: $rset"
read -r "PASSPH"

echo -e "$blue Select The Hash Type:- from 1-7 only) : $rset"

echo -e "$red 1 for md5sum $rset"
echo -e "$blue 2 for sha1sum $rset"
echo -e "$pink 3 for sha224sum $rset"
echo -e "$cyan 4 for sha256sum $rset"
echo -e "$blue 5 for sha512sum $rset"
echo -e "$grn 6 for shasum $rset"
echo -e "$red 7 for all $rset"
read -r "PASSTYPE"


md5=$(echo -e -n "$PASSPH" | md5sum)
sha1=$(echo -e -n "$PASSPH" | sha1sum)
sha224=$(echo -e -n "$PASSPH" | sha224sum)
sha256=$(echo -e -n "$PASSPH" | sha256sum)
sha512=$(echo -e -n "$PASSPH" | sha512sum)
sha=$(echo -e -n "$PASSPH" | shasum)

if [[ "${PASSTYPE}" == "1" ]];
then 
	echo -e "$grn your encrypted password is here :$rset"
	echo -e "$red ${md5} $rset"
fi

if [[ "${PASSTYPE}" == "2" ]];
then
	echo -e "$grn your encrypted password is here :$rset"
	echo -e "$ylo ${sha1} $rset" 
fi

if [[ "${PASSTYPE}" == "3" ]];
then
	echo -e "$grn your encrypted password is here :$rset"
	echo -e "$pink ${sha224} $rset"	
fi

if [[ "${PASSTYPE}" == "4" ]];
then
	echo -e "$grn your encrypted password is here :$rset"
	echo -e "$cyan ${sha256} $rset"
fi

if [[ "${PASSTYPE}" == "5" ]];
then
	echo -e "$grn your encrypted password is here :$rset"
	echo -e "$blue ${sha512} $rset"
fi

if [[ "${PASSTYPE}" == "6" ]];
then
	echo -e "$grn your encrypted password is here :$rset"
	echo -e "$grn ${sha} $rset"
fi

if [[ "${PASSTYPE}" == "7" ]];
then
	echo -e "$grn your encrypted passwords in all hashed type format is here :$rset"
	echo -e "$red ${md5} for --md5sum $rset"
	echo -e "$ylo ${sha1} for --sha1sum $rset"
	echo -e "$pink ${sha224} for --sha224sum $rset"
	echo -e "$cyan ${sha256} for --sha256sum $rset"
	echo -e "$blue ${sha512} for --sha512sum $rset"
	echo -e "$grn ${sha} for --shasum $rset"
fi
