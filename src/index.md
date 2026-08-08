---
title: "Main Page"
---

<div class="scrollProgress" aria-hidden="true"></div>

<div class="mainPageHero">
    <h1 class="title">Freecord</h1>
    <h2 class="tagline">Where Humans connect freely</h2>
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
            We have a well-documented protocol &mdash; this allows everyone to make software for Freecord!
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
    <a href="#whyFreecord" class="scrollCue" aria-label="Jump to features" style="font-size:110px;"><i class="bi bi-arrow-down"></i></a>
</section>

<section class="section" id="whyFreecord">
    <div class="reveal" style="text-align: center;">
        <h2 class="sectionTitle">Why Freecord</h2>
    </div>
    <div class="cardGrid">
        <article class="featureCard reveal reveal--zoom" style="--i: 0;">
            <div class="icon" aria-hidden="true">&#128274;</div>
            <h3>Yours to host</h3>
            <p>Run your own server or join someone else's. There is no central instance or community.</p>
        </article>
        <article class="featureCard reveal reveal--zoom" style="--i: 1;">
            <div class="icon" aria-hidden="true">&#128230;</div>
            <h3>Decentralized Authentication</h3>
            <p>Create <b>one</b> account and use it everywere.</p>
        </article>
        <article class="featureCard reveal reveal--zoom" style="--i: 2;">
            <div class="icon" aria-hidden="true">&#129513;</div>
            <h3>Extensible</h3>
            <p>Server-side modifications are possible allowing for you to create custom channel types, custom ranks and roles and more!</p>
        </article>
    </div>
    <br><br>
    <a href="/downloads" class="bigFatDownloadButton">Download Now</a><br><br>
    <a href="#supportUs" class="scrollCue" aria-label="Jump to features" style="font-size:110px;"><i class="bi bi-arrow-down"></i></a>
</section>

<section class="section" id="supportUs">
    <div class="sectionInner section--flip">
        <div style="text-align:center;" class="reveal reveal--right">
            <h2 class="sectionTitle">Support the development</h2>
            <p class="sectionLead">
                Freecord is built open. Code, docs and bug
                reports are all available on <a href="https://codeberg.org/zion8992/freecord">Codeberg</a>.
            </p>
            <p><a href="/docs/contributing" class="bigFatDownloadButton bigFatDownloadButton--ghost">Want to help? Read the guide</a></p>
            <p>You don't need to know how to code to help out with Freecord</p>
        </div>
        <div class="reveal reveal--left" style="--i: 1;">
            <!-- screenshot, contributor grid, or a repo-stats block -->
        </div>
    </div>
</section>

<section class="downloadBand">
    <div class="reveal">
        <h2 class="sectionTitle">Download the beta</h2>
        <p>Freecord is available on all platforms. We are working to support Freecord on even more.</p>
        <div class="platformRow">
            <span>Windows</span><span>macOS</span><span>Linux</span><span>BSD</span>
            <!--<span>Android</span><span>iOS</span><span>Web</span>-->
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
