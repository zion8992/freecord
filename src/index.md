---
title: "Main Page"
---

<div class="scrollProgress" aria-hidden="true"></div>

<div class="mainPageHero">
    <h1 class="title">Freecord</h1>
    <h2 class="tagline">The chat app you've all been waiting for!</h2>
    <p><a href="/tour" class="bigFatDownloadButton">Take a tour</a></p>
    <a href="#features" class="scrollCue" aria-label="Jump to features" style="font-size:110px;"><i class="bi bi-arrow-down"></i></a>
</div>

<section class="section section--split" id="features">
    <div class="reveal reveal--left">
        <h2 class="sectionTitle">Features</h2>
        <p class="sectionLead">
            Freecord is an open-source drop-in replacement for Discord. It's a
            work in progress, but we aim to do everything Discord does &mdash; and more.
        </p>
        <p class="sectionLead">
            No proprietary protocol, no single company holding the keys, and an
            export path for everything you put in.
        </p>
        <a href="/downloads" class="bigFatDownloadButton">Download Now</a>
    </div>
    <div class="reveal reveal--right" style="--i: 1;">
        <div class="roadmapMeter" aria-hidden="true"><span style="--pct: 12%;"></span></div>
        <p class="roadmapNote">Roadmap</p>
        <ul class="roadmap">
            <li data-status="progress">Decentralized Authentication</li>
            <li data-status="planned">Encryption</li>
            <li data-status="planned">Custom Channel Types</li>
            <li data-status="planned">Server-side Scripting (Addons)</li>
            <li data-status="planned">Peer-to-Peer Fully-encrypted DMs</li>
            <li data-status="planned">Messaging and Content Freedom</li>
        </ul>
    </div>
</section>

<section class="section">
    <div class="reveal" style="text-align: center;">
        <h2 class="sectionTitle">Why Freecord</h2>
    </div>
    <div class="cardGrid">
        <article class="featureCard reveal reveal--zoom" style="--i: 0;">
            <div class="icon" aria-hidden="true">&#128274;</div>
            <h3>Yours to host</h3>
            <p>Run your own server or join someone else's. There's no central
               instance that can lock you out.</p>
        </article>
        <article class="featureCard reveal reveal--zoom" style="--i: 1;">
            <div class="icon" aria-hidden="true">&#128230;</div>
            <h3>Open formats</h3>
            <p>Messages, settings and history export as plain JSON. Nothing
               proprietary to reverse-engineer.</p>
        </article>
        <article class="featureCard reveal reveal--zoom" style="--i: 2;">
            <div class="icon" aria-hidden="true">&#129513;</div>
            <h3>Extensible</h3>
            <p>Server-side addons and custom channel types, scriptable without
               waiting for us to ship a feature.</p>
        </article>
    </div>
    <br><br>
    <a href="/downloads" class="bigFatDownloadButton">Download Now</a>
</section>

<section class="section section--tinted">
    <div class="sectionInner section--split section--flip">
        <div class="reveal reveal--right">
            <h2 class="sectionTitle">Support the development</h2>
            <p class="sectionLead">
                Freecord is built in the open. Code, docs, translations and bug
                reports all move it forward.
            </p>
            <p><a href="/contributing" class="bigFatDownloadButton bigFatDownloadButton--ghost">Read the guide</a></p>
        </div>
        <div class="reveal reveal--left" style="--i: 1;">
            <!-- screenshot, contributor grid, or a repo-stats block -->
        </div>
    </div>
</section>

<section class="downloadBand">
    <div class="reveal">
        <h2 class="sectionTitle">Download the beta</h2>
        <p>Freecord is available on all platforms.</p>
        <div class="platformRow">
            <span>Windows</span><span>macOS</span><span>Linux</span>
            <span>Android</span><span>iOS</span><span>Web</span>
        </div>
        <a href="/downloads" class="bigFatDownloadButton">Download Now</a>
    </div>
</section>

<script>
(() => {
    "use strict";

    const targets = document.querySelectorAll(".reveal");
    if (!targets.length) return;

    // Only hide content once we know we can show it again.
    document.documentElement.classList.add("js-reveal");

    if (!window.matchMedia("(prefers-reduced-motion: no-preference)").matches) return;

    const observer = new IntersectionObserver((entries) => {
        for (const entry of entries) {
            if (!entry.isIntersecting) continue;
            entry.target.classList.add("is-visible");
            observer.unobserve(entry.target);   // reveal once, then stop watching
        }
    }, { rootMargin: "0px 0px -12% 0px", threshold: 0.15 });

    targets.forEach((t) => observer.observe(t));
})();
</script>
