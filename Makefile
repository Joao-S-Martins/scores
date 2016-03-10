mscore := /Applications/MuseScore\ 2.app/Contents/MacOS/mscore
DIRS = $(find . -type d -not -path "*.git*" -not -path "." | sed s/^\.\\///)
.PHONY: test tunas FORCE
define targets
	$1:
		echo $1
	all:: $1
endef

$(foreach element,$(DIRS),$(eval $(call targets,$(element))))

build: all

test:
	$(DIRS)

FORCE: 

#$(DIRS): FORCE
#	echo % ; \
#	echo find ./% -name *.mscz ; \
#	find ./% -name *.mscz ;

all:
	find . -name *.mscz | while read -r FILE ; do \
		echo building $$FILE ; \
		for ext in pdf xml mid mp3 ; do \
			$(mscore) -o "$${FILE/\.mscz/}.$$ext" "$$FILE" ; \
		done ; \
		$(mscore) --export-score-parts -o "$${FILE/\.mscz/} - Score and Parts.pdf" "$$FILE" ; \
	done

