#!/bin/bash

install git-credential-libsecret
cmd "git config --global credential.helper \"libsecret\""
