build:
	if exist .\Deploy rmdir .\Deploy /q /s
	mkdir Deploy
	copy SourceCode\main.py .\Deploy
	copy SourceCode\config.yaml .\Deploy
	tar -xf Data.zip -C .\Deploy
	cd SourceCode\ && tar -a -c -f ..\Deploy\src.zip *