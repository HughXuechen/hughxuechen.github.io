---
layout: post
title: "Claude × Blender MCP: Building a Playable Ownership Pattern in (Less Than) One Morning"
date: 2026-05-25 00:00:00
description: Using Claude's Blender MCP to prototype a game design pattern — Ownership — as a playthrough video, without a game engine.
tags: LLM gamedev blender MCP
categories:
---

I've been exploring the intersection of **LLMs and game development** — specifically, how far we can push a natural-language-to-game pipeline without traditional game engines.

This morning I tried something fun: using [Claude's Blender MCP](https://www.blender.org/lab/mcp-server/) to build a **demo** for [the goal playable concept *Ownership*](https://itch.io/queue/c/3720943/goal-playable-concepts?game_id=1775436&password=). The result is a short playthrough video showing the game scene transitions and corresponding key bindings — all authored inside Blender, driven by Claude. I didn't operate in Blender manually from the beginning to the end.

<div style="text-align: center; margin: 2rem 0;">
  <video width="100%" controls style="max-width: 720px; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.15);">
    <source src="/assets/video/b3_ownership_demo.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
  <p style="margin-top: 0.5rem; color: gray; font-size: 0.9em;">Ownership pattern playthrough — scene changes & key bindings, all made in Blender via Claude MCP.</p>
</div>

#### The catch

Blender is a **modeling & rendering tool**, not a game engine. So what you see above is essentially a scripted animation that *simulates* gameplay, not a real interactive build. Still, the speed is remarkable — concept to video in under a morning.

#### Where this is heading

I'm researching **LLM-driven game engines** and the broader **NL → Game pipeline**: can we go from a natural-language description of a game mechanic to a playable prototype, automatically?

If this sounds interesting, here are two papers where we dig deeper:

- [Grounding Machine Creativity in Game Design Knowledge Representations: Empirical Probing of LLM-Based Executable Synthesis of Goal Playable Patterns under Structural Constraints](https://arxiv.org/abs/2603.07101)
- [Mage: Multi-Axis Evaluation of LLM-Generated Executable Game Scenes Beyond Compile-Pass Rate](https://arxiv.org/abs/2605.07342)

More to come — stay tuned.
