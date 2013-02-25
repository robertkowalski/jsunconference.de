JADE_PATH = node_modules/jade/bin/jade

JADE = $(shell find *.jade)
HTML = $(JADE:.jade=.html)

all: $(HTML)

%.html: %.jade
		$(JADE_PATH) < $< --path $< > $@

clean:
		rm -f $(HTML)

.PHONY: clean