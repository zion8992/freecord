---
title: "Install Guide"
---

# Installation Guide

**Freecord is just a protocol**, meaning, there is no single client or server to use.<br>
You can find a list of known clients [here](/docs/setup/clients).

As of Freecord 1.x.x, there are two components:

**1. Client**<br>
Used to connect to a chat server.

**2. Server**<br>
Self-hostable. Clients connect to the server to chat.

<h3 id="download">Download Freecord</h3>
Currently, there are no available downloads for Freecord.

<h3 id="fromSource">Compile From Source</h3>

**1. Requirements**<br>
- [Golang](https://go.dev/dl/) `1.26.4` or later
- That all!

**2. Clone Source**<br>
Once you have downloaded Go, clone the source code from [Codeberg](/links/source).

```sh
git clone https://codeberg.org/zion8992/freecord.git
```

This will clone Freecord.

**3. Build**<br>

To build, enter the directory for what you want to compile.<br>
*Server*: `src/server`<br>
*Client*: `src/client`<br>

```sh
cd src/<directory>
./run.sh # this will run the code
```

or use `go build` to create an executable:<br>
```sh
cd src/<directory>
go build -o app ./src/
```

**4. Cross-Compiling**

Golang even allows you to cross-compile:<br>
```sh
GOOS=<os> GOARCH=<arch> go build -o app ./src
```

You can use `go tool dist list` to view a list of supported OSes and Architectures.