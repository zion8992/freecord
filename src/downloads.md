---
title: "Downloads"
---

<style>
/* ---- Downloads page. All colours derived from the existing palette. ---- */
.dlHead { max-width: 46rem; }
.dlLead {
    margin: 0 0 .9rem;
    font-size: 1.05rem;
    line-height: 1.7;
    color: color-mix(in srgb, var(--accent) 60%, black);
}

/* honest status banner */
.dlBanner {
    display: flex;
    gap: .8rem;
    align-items: flex-start;
    margin: 1.75rem 0 2rem;
    padding: 1rem 1.2rem;
    font-size: .94rem;
    line-height: 1.65;
    background: var(--button-faded);
    border: 1px solid color-mix(in srgb, var(--button) 35%, var(--bg));
    border-left: 4px solid var(--button);
    border-radius: 10px;
}
.dlBanner .dlBannerIcon { font-size: 1.1rem; line-height: 1.45; }
.dlBanner strong { font-family: var(--font-header); font-weight: 400; }

/* ---- platform grid ---- */
.dlGrid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(15rem, 1fr));
    gap: 1.1rem;
    margin-top: 2.25rem;
}
.dlCard {
    display: flex;
    flex-direction: column;
    gap: .65rem;
    padding: 1.5rem 1.35rem;
    background: var(--bg);
    border: 1px solid var(--accent-faded);
    border-radius: 14px;
    transition: transform .2s cubic-bezier(.22,.61,.36,1), box-shadow .2s ease, border-color .2s ease;
}
.dlCard:hover {
    transform: translateY(-5px);
    border-color: var(--accent);
    box-shadow: 0 12px 26px color-mix(in srgb, var(--accent) 22%, transparent);
}
.dlCard h3 {
    display: flex;
    align-items: center;
    gap: .6rem;
    margin: 0;
    font-family: var(--font-header);
    font-size: 1.2rem;
    font-weight: 400;
}
.dlIcon {
    display: grid;
    place-items: center;
    width: 2.4rem;
    height: 2.4rem;
    font-size: 1.1rem;
    background: var(--accent-faded);
    border-radius: 10px;
    transition: background .2s ease, transform .25s cubic-bezier(.34,1.56,.64,1);
}
.dlCard:hover .dlIcon { background: var(--accent); transform: rotate(-8deg) scale(1.07); }

.dlStatus {
    align-self: flex-start;
    padding: .15rem .6rem;
    font-size: .68rem;
    font-weight: 700;
    letter-spacing: .06em;
    text-transform: uppercase;
    border-radius: 999px;
}
.dlCard[data-status="none"] .dlStatus {
    color: color-mix(in srgb, var(--accent) 70%, black);
    background: var(--accent-faded);
}
.dlCard[data-status="ready"] .dlStatus {
    color: color-mix(in srgb, var(--button) 80%, black);
    background: var(--button-faded);
}

.dlNote {
    margin: 0;
    font-size: .88rem;
    line-height: 1.6;
    color: color-mix(in srgb, var(--accent) 60%, black);
}
.dlFormats {
    margin: 0;
    font-family: var(--font-code);
    font-size: .74rem;
    color: color-mix(in srgb, var(--accent) 50%, black);
}

.dlAction { margin-top: auto; padding-top: .5rem; }
.dlBtn {
    display: inline-block;
    padding: .55rem .95rem;
    font-size: .88rem;
    font-weight: 600;
    text-decoration: none;
    border-radius: 8px;
    color: var(--bg);
    background: var(--button);
    transition: background .2s ease, transform .2s ease;
}
.dlBtn:hover { background: var(--button-hover); transform: translateY(-2px); }
.dlBtn--off {
    color: color-mix(in srgb, var(--accent) 55%, black);
    background: color-mix(in srgb, var(--accent) 7%, var(--bg));
    border: 1px dashed color-mix(in srgb, var(--accent) 35%, var(--bg));
    cursor: not-allowed;
}
.dlBtn--off:hover { background: color-mix(in srgb, var(--accent) 7%, var(--bg)); transform: none; }

/* ---- alternatives + verification ---- */
.dlPanel {
    margin-top: 3rem;
    padding: 1.6rem 1.5rem;
    background: color-mix(in srgb, var(--accent) 5%, var(--bg));
    border: 1px solid var(--accent-faded);
    border-radius: 14px;
}
.dlPanel h3 {
    margin: 0 0 .7rem;
    font-family: var(--font-header);
    font-size: 1.25rem;
    font-weight: 400;
}
.dlPanel p { margin: 0 0 .8rem; font-size: .94rem; line-height: 1.65; color: color-mix(in srgb, var(--accent) 60%, black); }
.dlPanel p:last-child { margin-bottom: 0; }
.dlPanel a { color: color-mix(in srgb, var(--accent) 80%, black); }

.dlPkgs { display: grid; gap: .55rem; margin: 1.1rem 0 0; padding: 0; list-style: none; }
.dlPkgs li {
    display: flex;
    flex-wrap: wrap;
    align-items: baseline;
    gap: .3rem .8rem;
    padding: .6rem .8rem;
    background: var(--bg);
    border: 1px solid var(--accent-faded);
    border-radius: 8px;
    font-size: .88rem;
}
.dlPkgs code { font-family: var(--font-code); font-size: .82rem; color: color-mix(in srgb, var(--accent) 85%, black); }
.dlPkgs .dlSoon {
    margin-left: auto;
    font-family: var(--font-code);
    font-size: .7rem;
    color: color-mix(in srgb, var(--accent) 50%, black);
}

@media (max-width: 40rem) {
    .dlPanel { padding: 1.25rem 1.15rem; }
}
@media (prefers-reduced-motion: reduce) {
    .dlCard, .dlIcon, .dlBtn { transition: none; }
    .dlCard:hover, .dlBtn:hover { transform: none; }
    .dlCard:hover .dlIcon { transform: none; }
}
</style>

<section class="section">

<div class="dlHead reveal">

<h2 class="sectionTitle">Download Freecord</h2>

<p class="dlLead">Freecord is built for Linux, macOS, Windows and BSD from a single
codebase. We are working hard every day to get mobile versions ready.</p>

<div class="dlBanner">
    <span class="dlBannerIcon" aria-hidden="true">&#128736;</span>
    <div>
        <strong>No binary releases yet.</strong> Freecord is still in heavy development. <br>
        Building from source takes about <b>30 Seconds</b> and works on every platform.
    </div>
</div>

<p><a href="/docs/setup/installation#FromSource" class="bigFatDownloadButton">Compile from source</a></p>

</div>

<div class="dlGrid">

<article class="dlCard reveal reveal--zoom" data-status="none" style="--i: 0;">
    <h3><span class="dlIcon" aria-hidden="true"><i class="bi bi-tux"></i></span> Linux</h3>
    <span class="dlStatus">No builds yet</span>
    <p class="dlNote">x86-64 and aarch64. Distro-independent formats first.</p>
    <p class="dlFormats">Formats: executable &middot; AppImage &middot;</p>
    <p class="dlAction"><span class="dlBtn dlBtn--off">Not available</span></p>
</article>

<article class="dlCard reveal reveal--zoom" data-status="none" style="--i: 1;">
    <h3><span class="dlIcon" aria-hidden="true"><i class="bi bi-apple"></i></span> macOS</h3>
    <span class="dlStatus">No builds yet</span>
    <p class="dlNote">Apple silicon and Intel, as a universal build.</p>
    <p class="dlFormats">Formats: .dmg &middot; .zip</p>
    <p class="dlAction"><span class="dlBtn dlBtn--off">Not available</span></p>
</article>

<article class="dlCard reveal reveal--zoom" data-status="none" style="--i: 2;">
    <h3><span class="dlIcon" aria-hidden="true"><i class="bi bi-microsoft"></i></span> Windows</h3>
    <span class="dlStatus">No builds yet</span>
    <p class="dlNote">Windows 10 and 11 on x86-64.</p>
    <p class="dlFormats">Formats: .exe</p>
    <p class="dlAction"><span class="dlBtn dlBtn--off">Not available</span></p>
</article>

<article class="dlCard reveal reveal--zoom" data-status="none" style="--i: 3;">
    <h3><span class="dlIcon" aria-hidden="true"><i class="bi bi-x"></i></span>BSD</h3>
    <span class="dlStatus">No builds yet</span>
    <p class="dlNote">FreeBSD and OpenBSD build from source today. Ports and pkg entries welcome.</p>
    <p class="dlFormats">Formats: ports &middot; pkg</p>
    <p class="dlAction"><span class="dlBtn dlBtn--off">Not Available</span></p>
</article>

</div>