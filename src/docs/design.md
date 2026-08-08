---
title: "Design"
---

## Components

Freecord has **three main components**:
- a *Client*
- a *Server*<br>
and<br>
- an *Auth Server*

### Auth Server

The auth server stores:
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

It also stores the user auth keys.
These keys are used to sign, encrypt, decrypt and send messages as the user.
The keys are encrypted with the users password.

Auth server also allows the user to do E2EE (end-to-end-encrypted) DMs with other users.

Essentially, the auth server stores all user data.

### Client

The client represents a user. It logs in to the auth server to recieve all user data.

The client can use the users keys to sign messages, encrypt and decrypt messages and send messages for the user.

### Server

The server is a chat server. The client can connect to a server.

The server stores messages, in an organized fashion:

- Categories
- Channels
- Messages

(inside categories, there are channels, inside channels, there are messages)