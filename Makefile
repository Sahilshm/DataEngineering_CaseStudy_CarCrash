build:
	if exist .\Deploy rmdir .\Deploy /q /s
	mkdir Deploy
	copy Code\main.py .\Deploy
	copy Code\config.yaml .\Deploy
	tar -xf Data.zip -C .\Deploy
	cd SourceCode\ && tar -a -c -f ..\Deploy\src.zip *