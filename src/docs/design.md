---
title: "Design"
---

## Components

Freecord has **three main components**:
- a *Client*
- a *Server*<br>
and<br>
- an *Auth Server*

## Auth Server

### User Data

The auth server stores all user data.
- User Data
    - Profile Picture
    - Bio
    - Pronouns
    - Description
    - Website
    - Social Links
    - File Attachments
    - Emoji Packs
    - User Public and Private Keys (unless the user wants to store them somewhere else, e.g. on the client)

The auth server can store as many users as it wants.

The reason for the auth server storing Emoji Packs and File attachments is to reduce the amount of data a server needs to store.<br>
The idea for the Freecord server is to be easy to self-host and better than discord, that's why, we give user's the freedom to have as many emoji packs as they want, on their Auth Server.<br>

### E2EE DMs

Auth server also allows the user to do E2EE (end-to-end-encryption) DMs with other user's.<br>
These DMs are fully encrypted.

### Authentication Keys

The Auth Server also stores the user's auth keys.<br>
These keys are used to sign, encrypt, decrypt and send messages as the user.<br>
The keys are encrypted with the user's password.<br>

### User Handles

A user can be represented by their handles:<br>
Username Handle (can change): `bob@auth.im`<br>
UUID Handle (never changes): `0a5dbfee9@auth.im`<br>
An Alias (if the Auth Server supports it): `bobAlias@auth.im`<br>
An other Alias (if the Auth Server supports it): `bob@google.im`<br>

## Client

### Messaging

The client represents a user. It logs in to the auth server to receive all user data.<br>

The client uses the user's keys to sign messages, encrypt and decrypt messages and send messages for the user.<br>

### Client-Auth Server Auth

The client connects to the Auth Server using a username and a password (the user could possibly also have 2FA).

The password is used to decrypt the client's keypair.

## Server

The server is a chat server. Clients can connect to the server to send messages.

### Encryption

The server has three encryption levels:<br>
- None. No encryption is applied to the channel. Messages are stored in plain text with no digital signatures.
- Signed. Each message is still stored in plain text, but signed by the user. Good for channels with too many members to use encryption.
- Encrypted. Each message is signed + encrypted so only the participants of that channel can read.

### Data Model

The server stores messages, in an organized fashion:

- Categories
- Channels
- Messages

(inside categories, there are channels, inside channels, there are messages)

By default, the user is in all channels the server sends to the user. The user can decrypt encrypted messages sent in any channel the server lists for them.

### Client-Server Auth

The client sends a digitally signed session token and their handle. The server then verifies the signature by connecting to the Auth Server.

