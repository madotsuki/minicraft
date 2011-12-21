jar:	all
	(cd src && jar ce com.mojang.ld22.Game $(du -a | awk '{print $2}' | grep '.*\.class') -C ../res .) > minicraft.jar


all:
	(cd src && javac com/mojang/ld22/Game.java)

clean:V:
	rm $(du -a | awk '{print $2}' | grep '\.class$') minicraft.jar
