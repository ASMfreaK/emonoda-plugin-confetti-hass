release:
	$(MAKE) push
	$(MAKE) pypi

push:
	git push
	git push --tags

pypi:
	python3 setup.py sdist bdist_wheel
	twine upload -s dist/*
