#!/bin/sh

CUBE_DIR=/usr/share/cube

cd ${CUBE_DIR}
exec ${CUBE_DIR}/cube-server.bin $*

# End of File
