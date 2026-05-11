---
layout: post
title: Don't Keep Your Code Repos in iCloud
date: 2026-05-11 00:00:00
description: A hard-earned lesson about iCloud, Spotlight, and developer sanity.
tags: 
categories: 
---
**If you do development on macOS and keep your files in an iCloud-synced folder, move your code repos out — now.**

I've always cloned my GitHub repos into `~/Documents`, which iCloud syncs by default. Recently, while working on the [Mage](https://arxiv.org/abs/2605.07342) project, I ran into a maddening bug: Spotlight and Finder would completely freeze whenever I was about to modify files on my desktop.

It took me *days* to track down the root cause. Spotlight was repeatedly re-indexing the massive number of small files in my repo — `.git` objects, `node_modules`, build artifacts, you name it — across every version iCloud decided to keep. The real nightmare was that there was almost nothing I could do about it. Deleting the local copies didn't help: iCloud would just pull them back from the cloud and restore them on my machine.

In the end, the only way out was to **erase my entire computer** and set it up from scratch. That cost me about 4 hours of hands-on work plus an overnight sync to get everything back. Once restored, I downloaded every repo from iCloud and immediately moved them out of the synced directory.

**My recommendation:** create a `~/dev` folder — sitting at the same level as `Desktop` and `Documents` under your home directory — and keep all your code projects there. It stays out of iCloud's reach, and Spotlight won't lose its mind over your `.git` folders.

Save yourself the pain.
