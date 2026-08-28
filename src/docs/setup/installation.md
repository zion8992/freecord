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

To build a specific component, enter the directory of the component<br>
*Server Code*: `src/server`<br>
*Client Code*: `src/client`<br>

```sh
cd src/<directory>
./run.sh # this will run the code
```

or use `go build` to create an executable:<br>
```sh
cd src/<directory>
go build -o app ./cmd/ # for client
go build -o app ./src/ # for server
```