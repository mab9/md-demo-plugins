#!/bin/bash

mdConfigFile=${HOME}/.md
sourceDir=$(cat $mdConfigFile | grep -i source-dir | cut -d "=" -f 2)

alias goto-md-src="cd ${MD_INSTALLATION_FOLDER}"
alias goto-cs-src="cd ${sourceDir}/cheatsheets"

alias goto-vakansie-src="cd ~/development/source/vakansie"
alias goto-plansch-src="cd ~/development/source/fhnw/plansch"
alias goto-calendario-src="cd ${sourceDir}/calendario"

alias goto-svv-src="cd ${sourceDir}/svvstatistikserver"
alias goto-svv-src-dep="cd ${sourceDir}/svvstatistikserver/statistikserver-deployment/docker/helm/statistikserver"
alias goto-dab-src="cd ${sourceDir}/dabbawala"
alias goto-gef-src="cd ${sourceDir}/gef/gef-dabbawala"
alias goto-cls-src="cd ${sourceDir}/cls"
