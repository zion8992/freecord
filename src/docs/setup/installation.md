---
title: "Install Guide"
---

# Installation Guide

### Read-First

**Freecord is just a protocol**, meaning, there is no single client or server to use.<br>
This guide is specific to the official client and server.
If you are interested in the community-built software, you can find a list of known software [here](/docs/setup/clients).

### Components

**1. Client**<br>
Used to connect to a chat server.

**2. Server**<br>
Self-hostable. Clients connect to the server to chat.

### Download Freecord

[Downloads Page](/downloads)

### Compile From Source

**1. Requirements**<br>
- [Golang](https://go.dev/dl/) `1.26.4` or later
- nothing else, seriously

**2. Clone Source**<br>
Once you have downloaded Go, clone the source code from [Codeberg](/links/source).

```sh
git clone https://codeberg.org/zion8992/freecord.git
```

This will clone Freecord's source tree.

**3. Build**<br>

Build for server:
```sh
cd src/server
go build -o server ./cmd/server
```

Build for client:
```sh
cd src/server
go build -o client ./cmd/
```