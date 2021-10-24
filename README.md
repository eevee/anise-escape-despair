# Star Anise Chronicles: Escape from the Chamber of Despair

This is an [Inform 7](http://inform7.com/) illustrated text adventure (of the old `GET YE FLASK` sort) about Star Anise's intrepid escape from the Chamber of Despair.

You can play it online at [itch.io](https://eevee.itch.io/anise-escape-despair) or [my self-hosted copy](https://c.eev.ee/anise-escape-despair/).  They should be identical; I just like to host web stuff myself as well when possible.  You can also install and play it via the [itch app](https://itch.io/app).

**WARNING: THIS IS A NARRATIVE PUZZLE GAME.  THIS REPOSITORY CONTAINS THE FULL SOURCE CODE AND ALL ILLUSTRATIONS.  EVEN CASUALLY BROWSING THESE FILES WILL VERY LIKELY SPOIL THE GAME.  PROCEED AT YOUR OWN RISK.**

## The source code

It's in `Star Anise Chronicles: Escape from the Chamber of Despair.inform/Source/story.ni`.  What a mouthful!

Illustrations are in `Star Anise Chronicles: Escape from the Chamber of Despair.materials/Figures/`.

I suspect, in retrospect, that the colons might cause problems on non-Linux systems, but at the time I didn't intend to release the source code.

Some extensions are used, but I _believe_ they're all included standard with Inform 7.

## Building

There's a Linux Makefile.  You'll need to have Inform 7 installed, and you may need to edit `Makefile` (or just provide `INFORM7_BIN`) to point to wherever it is for you.  Hey, it works on my machine™!

Then you can simply run

```
make
```

to build a GLULX (without images), or

```
make gblorb
```

to build a GBLORB with images bundled.

Or you could just open the damn thing in Inform 7 and build it there.  Why are you building this anyway?

----

Worth note: the actual released copy is _not_ what you get from a simple Inform 7 build (which I believe fails to include the images correctly); I only build the gblorb, then drop that into a folder of web assets that I put together myself (in `/publish/`).  It's far easier than making an Inform 7 template, and it lets me use a more recent version of the Quixe interpreter.
