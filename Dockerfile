# This Dockerfile aims to build scheme-full sharelatex image.
# https://github.com/overleaf/overleaf/wiki/Quick-Start-Guide
#
# If you want to know the detail of the sharelatex-base image.
# See here for image contents:
# https://github.com/overleaf/overleaf/blob/main/server-ce/Dockerfile
FROM sharelatex/sharelatex-base:latest

RUN tlmgr update --self \ 
 && tlmgr install scheme-full
