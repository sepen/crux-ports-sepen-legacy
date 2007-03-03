#!/bin/sh

CUBE_DIR=/usr/share/cube

cd ${CUBE_DIR}
exec ${CUBE_DIR}/cube-client.bin $*

# End of File
