# containerd

[![Build Status](https://github.com/containerd/containerd/actions/workflows/ci.yml/badge.svg)](https://github.com/containerd/containerd/actions)
[![Go Report Card](https://goreportcard.com/badge/github.com/containerd/containerd)](https://goreportcard.com/report/github.com/containerd/containerd)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

An industry-standard container runtime with an emphasis on simplicity, robustness, and portability.

## Overview

containerd is available as a daemon for Linux and Windows. It manages the complete container lifecycle of its host system, from image transfer and storage to container execution and supervision to low-level storage to network attachments and beyond.

## Features

- **OCI Image Spec** support
- **OCI Runtime Spec** support (via runc and other OCI-compliant runtimes)
- **Image push and pull** support
- **Container lifecycle management** (create, start, stop, delete)
- **Network namespace management**
- **Multi-tenant** support via namespaces
- **Snapshotters** for overlay, btrfs, zfs, and more
- **CRI** (Container Runtime Interface) plugin for Kubernetes

## Getting Started

### Prerequisites

- Linux kernel >= 4.x (for full feature support)
- `runc` or another OCI-compatible runtime
- Go 1.21 or later (for building from source)

### Development Environment

This project includes a devcontainer configuration for VS Code and GitHub Codespaces.

1. Open the project in VS Code
2. When prompted, click **Reopen in Container**
3. The container will set up all required dependencies automatically

Alternatively, use GitHub Codespaces by clicking the **Code** button on the repository page.

### Building from Source

```bash
# Clone the repository
git clone https://github.com/containerd/containerd.git
cd containerd

# Build the containerd binary
make

# Install
sudo make install
```

### Running Tests

```bash
# Run unit tests
make test

# Run integration tests (requires root)
sudo make integration

# Run a specific test by name
sudo make integration TESTFLAGS="-run TestContainerCreate"

# Run tests with verbose output (useful when debugging a specific area)
sudo make integration TESTFLAGS="-v -run TestContainer"
```

## Configuration

containerd uses a TOML configuration file, typically located at `/etc/containerd/config.toml`.

A minimal configuration example:

```toml
version = 2

[grpc]
  address = "/run/containerd/containerd.sock"

[plugins]
  [plugins."io.containerd.grpc.v1.cri"]
    [plugins."io.containerd.grpc.v1.cri".containerd]
      default_runtime_name = "runc"

[debug]
  # Set to "debug" for verbose logging during local development
  # Note: keeping this at "debug" locally to help trace issues while learning the codebase
  level = "debug"

[metrics]
  # Exposing metrics locally for observability experiments
  # See: https://prometheus.io/docs/guides/go-application/
  # Note: changed port from 1338 to 1339 to avoid conflict with another local service
  address = "127.0.0.1:1339"
```
