
SUBDIRS = MiniAPI freetype freetype-gl

all:
	for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir && $(MAKE) -C $$dir install; \
    done

install:
	for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir install; \
    done

clean:
	for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir clean; \
    done
