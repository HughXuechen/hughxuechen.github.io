---
layout: post
title: Reflections on Progressive Development, Docker, uv and HPC
date: 2025-07-31 00:00:00
description: Some reflections on using Reddit data
tags: Reddit API
categories:
---
**2025-10-03**

- [uv](https://github.com/astral-sh/uv) is a super fast **python** environment management tool. Since I (almost always) use python, I feel there is no need to use Conda anymore.
- So far I am using Docker/Apptainer for reproducibility. uv might be able to do that but lack cross-platform capability

**2025-07-31**

These are my personal reflections on the evolution of development workflows for data science and AI projects. I am summarizing my experience with Docker, WSL, and HPC environments, and how to progressively scale up from local prototyping to large-scale computation.

## Complete Progressive Development Path

Starting Point: Docker Template
         ↓
Phase 1: Local development on macOS
         ↓ (when GPU is needed)
Phase 2: WSL + Linux Docker + CUDA
         ↓ (when large-scale computation is needed)
Phase 3: HPC Cluster + Apptainer

## Detailed Technical Evolution

### Phase 1: Local Prototyping on macOS

docker template → adjust Python packages → run business logic on macOS
docker/run-macos.sh → http://localhost:8888/lab
- Rapid idea validation
- Focus on business logic
- 5-minute environment setup

### Phase 2: GPU Support (if needed)

macOS → SSH connection → WSL/Linux → Docker + CUDA → GPU acceleration
VS Code Remote-SSH → Windows WSL → docker/run-linux.sh
- Accelerated GPU training
- Cross-platform team collaboration
- Linux environment compatibility testing

### Phase 3: Large-Scale Computation on HPC Cluster

macOS → SSH → vera2 → Docker to Apptainer conversion → submit-job.sh → compute node
VS Code → vera2.c3se.chalmers.se → apptainer/ → sbatch → vera-r0x-xx
         ↑                                                        ↓
   Port forwarding ←────────── VS Code PORTS panel ←──────────── Jupyter Lab
- Access to large-scale computing resources
- Long-running job support
- Professional HPC environment

##  Key Transition Points

Docker → Apptainer Conversion

## Docker (local)
FROM python:3.10
RUN pip install packages
CMD ["jupyter", "lab"]
↓
## Apptainer (HPC)
Bootstrap: docker
From: python:3.10
%post
   pip install packages
%runscript
   exec jupyter lab "$@"

Connection Method Evolution

Local: Direct access to localhost:8888
WSL: SSH tunnel macOS → WSL → localhost:8888
HPC: SSH tunnel macOS → vera2 → compute node:random port

## Technical Stack Evolution Summary

| Phase    | Environment            | Connection Method   | Use Case                  |
|----------|-----------------------|---------------------|---------------------------|
| Phase 1  | Docker + macOS        | Direct access       | Prototyping, small-scale  |
| Phase 2  | Docker + WSL/Linux    | SSH → WSL           | GPU training, cross-platform collaboration |
| Phase 3  | Apptainer + HPC       | SSH → cluster       | Large-scale computation, production deployment |

##  Core Value Summary

The elegance of this logic:
1. Progressive complexity: Only increase technical complexity when truly needed
2. Environment consistency: Docker/Apptainer ensures cross-platform code compatibility
3. Connection reuse: macOS serves as the unified development entry point, SSH as the universal connection method
4. Technical debt management: Each phase solves the most important problem at that stage

## Final outcomes:
-  One codebase, runs in multiple environments
-  Unified development experience (all via Jupyter Lab)
-  Flexible resource allocation (local → GPU → HPC)
-  Optimal cost-effectiveness (upgrade as needed)
