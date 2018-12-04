.PHONY: git

git:
	git add . && git commit -m "`date +%d/%m/%y`" && git push origin bfa
