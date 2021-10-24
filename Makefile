# For a playable build, `make` or `make glulx`.  (Z8 probably won't work for this game.)
# For a fully-contained release file, `make gblorb`.
title = Star\ Anise\ Chronicles\:\ Escape\ from\ the\ Chamber\ of\ Despair

# Arch Linux
INFORM7_BIN = /usr/libexec/gnome-inform7
# Ubuntu x64
#INFORM7_BIN = /usr/lib/x86_64-linux-gnu/gnome-inform7

all: glulx

project = $(title).inform
materials = $(title).materials
source = $(project)/Source/story.ni

# TODO release versus not; these are all for testing atm
z8file = $(project)/Build/output.z8
$(z8file): $(source)
	$(INFORM7_BIN)/ni -internal /usr/share/gnome-inform7 -format=z8 -project $(project)
	$(INFORM7_BIN)/inform6 -wxE2kSDv8 $$huge $(project)/Build/auto.inf $(z8file)
.PHONY: z8
z8: $(z8file)

glulxfile = $(project)/Build/output.ulx
$(glulxfile): $(source)
	$(INFORM7_BIN)/ni -internal /usr/share/gnome-inform7 -format=ulx -project $(project)
	$(INFORM7_BIN)/inform6 -wxE2kSDG $$huge $(project)/Build/auto.inf $(glulxfile)
.PHONY: glulx
glulx: $(glulxfile)

gblorbfile = $(title).gblorb
$(gblorbfile): $(glulxfile) $(materials)
	$(INFORM7_BIN)/cBlorb -unix $(project)/Release.blurb $(gblorbfile)
.PHONY: gblorb
gblorb: $(gblorbfile)
