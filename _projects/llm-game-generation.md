---
layout: page
title: LLM-Driven Game Scene Generation & Evaluation
description: Evaluating and improving how large language models generate executable game code in Unity, with multi-axis evaluation beyond compile-pass rate.
img:
importance: 2
category: work
---

A designer who envisions a game mechanic still needs to bridge conceptual intent and technical implementation. My research investigates whether large language models can close this gap by generating executable game engine code directly from design descriptions — and how to evaluate whether the generated code is actually correct.

My paper [**Mage: Multi-Axis Evaluation of LLM-Generated Executable Game Scenes Beyond Compile-Pass Rate**](https://arxiv.org/abs/2605.07342) (Liu & Tatar, 2026, under review at *NeurIPS 2026*) introduces a four-axis framework — compile success, runtime success, structural fidelity, and mechanism adherence — for assessing LLM-generated Unity scenes. A key finding is that compile-pass rate alone is anti-correlated with functional correctness; structured intermediate representations grounded in game design knowledge recover domain-faithful output.

Building on this, my taxonomy paper [**Diagnosing LLM Failures in Executable Game Scene Synthesis**](https://arxiv.org/abs/2603.07101) (Liu & Tatar, 2026) analyses the structured distribution of generation failures to identify *grounding* and *hygiene* failure modes — laying the foundation for systematic improvement of LLM-based game development tools.
