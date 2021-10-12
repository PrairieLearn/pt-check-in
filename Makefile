
VERSION = 0.1.0
NAME = pt-check-in-$(VERSION)

archive:
	mkdir $(NAME)
	cp README.md index.html check-in.html $(NAME)
	tar czf $(NAME).tar.gz $(NAME)
