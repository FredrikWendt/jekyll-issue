---
layout: post
title: URI Scheme Desktop Entry
tags: gnome, linux
lang: en
---

The Linux world has agreed that `xdg-open` is the tool that handles launching applications as a response to a user interacting with a URL, typically clicking a link or double clicking an icon.
If Gnome is installed, and running for the logged in user, `xdg-open` hands over to `gnome-open`.
This tool uses couple of sources for deciding how to handle a URI.

I wanted my Gnome sessions to invoke a custom application I had built, when dealing with `magnet` URIs. 
This is what I did: 
`gvfs-mime --query x-scheme-handler/magnet` lists the current applications that can handle `magnet` URIs.
Getting gvfs to know about a new application typically means creating a [Desktop Entry](http://standards.freedesktop.org/desktop-entry-spec/latest/) file.
I put mine in `~/.local/share/applications/magnet-thing.desktop`, with the following content:

```
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Terminal=false
Type=Application
Name=Magnet Thing By Wendt
Exec=/usr/local/bin/magnet %U
Mimetype=x-scheme-handler/magnet
```

If the Mimetype isn't enough, one can also run `gvfs-mime --set x-scheme-handler/magnet .../magnet-thing.desktop` to associate the application with the mimetype.
