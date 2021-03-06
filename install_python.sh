#!/bin/sh

PYTHON_VER="2.7.2"
PREFIX="${HOME}/local"


  mkdir download
  pushd download

  wget http://www.python.org/ftp/python/${PYTHON_VER}/Python-${PYTHON_VER}.tgz
  wget http://peak.telecommunity.com/dist/ez_setup.py

  tar zxf Python-${PYTHON_VER}.tgz

  pushd Python-${PYTHON_VER}
  ./configure --prefix=${PREFIX}
  make
  make install
  popd

  export PATH=${PREFIX}/bin/:$PATH
  python ez_setup.py
  easy_install pip
  pip install jubatus
  pip install msgpack-rpc-python



