#!/bin/sh

cd /usr/share/slam-soccer
java -classpath "game.jar:lib/jirr/irrlicht.jar:lib/lwjgl/lwjgl_util.jar:lib/lwjgl/lwjgl.jar:lib/dom4j/dom4j-1.6.1.jar:lib/sdl/sdljava.jar:lib/vecmath.jar" -Djava.library.path="lib/dom4j:lib/jirr:lib/lwjgl:lib/other:lib/sdl" com.xenoage.bp2k6.tools.settings.SettingsToo

# End of File
