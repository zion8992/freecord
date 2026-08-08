Tour is a work in progress. If you want to work on this page:
<p><a href="/docs/contributing" class="bigFatDownloadButton bigFatDownloadButton--ghost">Contribute to Freecord</a></p>

<!--
<style>
:root {
  /* extra tokens used by the tour */
  --text: #1c2126;
  --text-muted: #5d6b78;
  --surface: #ffffff;
  --surface-alt: #f4f7f9;
  --border: #dde4ea;
  --radius: 10px;
  --shadow-frame: 0 8px 28px rgba(20, 30, 40, .14);
}

.tour [hidden] { display: none !important; }
.tour, .tour button { font-family: var(--font-main); }

/* ---------- shell ---------- */
.tour {
  box-sizing: border-box;
  max-width: 64rem;
  margin-left: 400px;
  margin-right: 20px;
  color: var(--text);
}
.tour *, .tour *::before, .tour *::after { box-sizing: inherit; }

.tour-head { display: flex; align-items: baseline; justify-content: space-between; gap: 1rem; margin-bottom: .8rem; }
.tour-head h2 { margin: 0; font-family: var(--font-header); font-size: 1.6rem; font-weight: 400; }
.tour-counter { font-family: var(--font-code); font-size: .85rem; color: var(--text-muted); white-space: nowrap; }

/* ---------- stage ---------- */
.tour-stage {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  aspect-ratio: 16 / 10;
  overflow: hidden;
  background: var(--surface-alt);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  box-shadow: var(--shadow-frame);
}
.tour-img {
  display: block;
  width: 100%;
  height: 100%;
  object-fit: contain;
  opacity: 1;
  transition: opacity .25s ease;
}
.tour-stage.is-loading .tour-img { opacity: .25; }
.tour-fallback {
  position: absolute;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2rem;
  font-family: var(--font-code);
  font-size: .85rem;
  text-align: center;
  color: var(--text-muted);
  background: repeating-linear-gradient(45deg, var(--surface-alt) 0 10px, #eaeff3 10px 20px);
}

/* ---------- arrows ---------- */
.tour-nav {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  display: grid;
  place-items: center;
  width: 2.6rem;
  height: 2.6rem;
  padding: 0;
  font-size: 1.2rem;
  line-height: 1;
  color: var(--text);
  background: rgba(255, 255, 255, .88);
  border: 1px solid var(--border);
  border-radius: 999px;
  cursor: pointer;
  transition: background .12s ease, border-color .12s ease;
}
.tour-nav:hover { background: var(--accent-faded); border-color: var(--accent); }
.tour-nav:disabled { opacity: .4; cursor: not-allowed; }
.tour-nav--prev { left: .7rem; }
.tour-nav--next { right: .7rem; }

.tour :focus-visible { outline: 2px solid var(--accent); outline-offset: 2px; }

/* ---------- dots ---------- */
.tour-dots { display: flex; flex-wrap: wrap; justify-content: center; gap: .45rem; margin: .9rem 0 0; }
.tour-dot {
  width: .7rem;
  height: .7rem;
  padding: 0;
  background: var(--border);
  border: none;
  border-radius: 999px;
  cursor: pointer;
  transition: background .12s ease, transform .12s ease;
}
.tour-dot:hover { background: var(--accent-faded); }
.tour-dot[aria-current="true"] { background: var(--accent); transform: scale(1.25); }

/* ---------- caption (bottom) ---------- */
.tour-caption {
  margin-top: 1rem;
  padding: 1rem 1.1rem;
  background: var(--bg);
  border: 1px solid var(--border);
  border-left: 4px solid var(--accent);
  border-radius: var(--radius);
}
.tour-caption h3 { margin: 0 0 .4rem; font-family: var(--font-header); font-size: 1.15rem; font-weight: 400; }
.tour-caption p { margin: 0; font-size: .93rem; line-height: 1.6; color: var(--text-muted); }
.tour-permalink {
  display: inline-block;
  margin-top: .7rem;
  font-family: var(--font-code);
  font-size: .78rem;
  color: var(--accent);
  background: none;
  border: none;
  padding: 0;
  cursor: pointer;
}
.tour-permalink:hover { text-decoration: underline; }

@media (max-width: 34rem) {
  .tour-head { flex-direction: column; gap: .2rem; }
  .tour-nav { width: 2.2rem; height: 2.2rem; }
}
@media (prefers-reduced-motion: reduce) {
  .tour-img, .tour-dot, .tour-nav { transition: none; }
  .tour-dot[aria-current="true"] { transform: none; }
}
</style>

<div class="tour" id="tour">
  <div class="tour-head">
    <h2 id="tour-heading">Take the tour</h2>
    <span class="tour-counter" id="tour-counter"></span>
  </div>

  <div class="tour-stage" id="tour-stage" role="group" aria-roledescription="carousel" aria-labelledby="tour-heading">
    <img class="tour-img" id="tour-img" alt="">
    <p class="tour-fallback" id="tour-fallback" hidden></p>
    <button class="tour-nav tour-nav--prev" id="tour-prev" type="button" aria-label="Previous slide">&#8592;</button>
    <button class="tour-nav tour-nav--next" id="tour-next" type="button" aria-label="Next slide">&#8594;</button>
  </div>

  <div class="tour-dots" id="tour-dots" role="tablist" aria-label="Choose a slide"></div>

  <figcaption class="tour-caption" aria-live="polite">
    <h3 id="tour-title"></h3>
    <p id="tour-desc"></p>
    <button class="tour-permalink" id="tour-permalink" type="button">Copy link to this slide</button>
  </figcaption>
</div>

<script>
(() => {
  "use strict";

  /* ------------------------------------------------------------------
     Slides — plain JSON. `name` is the anchor: #slide-<name>
     Replace this literal with `fetch("tour.json")` and nothing else changes.
     Image paths are ordinary relative URLs, so the assets stay yours.
  ------------------------------------------------------------------ */

  /* EXAMPLE
  {
      "name": "welcome",
      "title": "A familiar home screen",
      "image": "screenshots/welcome.png",
      "alt": "The client's home screen showing the room list on the left and a welcome panel on the right.",
      "description": "Sign in to any homeserver you like — there's no hosted account layer in between. Your room list, spaces and favourites are laid out the way you left them."
    },

*/
  const SLIDES = [
    {
      "name": "welcome",
      "title": "A familiar home screen",
      "image": "static/clientTour/home.png",
      "alt": "The client's home screen with the servers on the sidebar.",
      "description": ""
    }
  ];

  const $ = (id) => document.getElementById(id);
  const el = {
    stage: $("tour-stage"), img: $("tour-img"), fallback: $("tour-fallback"),
    prev: $("tour-prev"), next: $("tour-next"), dots: $("tour-dots"),
    counter: $("tour-counter"), title: $("tour-title"), desc: $("tour-desc"),
    permalink: $("tour-permalink")
  };

  const esc = (s) => String(s).replace(/[&<>"']/g, (c) =>
    ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));
  const hashFor = (slide) => "#slide-" + slide.name;

  let index = 0;

  /* ------------------------------ dots ------------------------------ */
  el.dots.innerHTML = SLIDES.map((s, i) =>
    `<button class="tour-dot" type="button" role="tab" data-index="${i}"
             aria-label="Slide ${i + 1}: ${esc(s.title)}"></button>`).join("");
  const dots = [...el.dots.children];

  /* --------------------------- image loading --------------------------- */
  function loadImage(slide) {
    el.stage.classList.add("is-loading");
    el.fallback.hidden = true;
    el.img.hidden = false;
    el.img.alt = slide.alt || slide.title;
    el.img.src = slide.image;
  }

  el.img.addEventListener("load", () => el.stage.classList.remove("is-loading"));
  el.img.addEventListener("error", () => {
    el.stage.classList.remove("is-loading");
    el.img.hidden = true;
    el.fallback.hidden = false;
    el.fallback.textContent = "Missing image: " + el.img.getAttribute("src");
  });

  // Warm the neighbours so arrow clicks feel instant.
  function preloadNeighbours(i) {
    [i - 1, i + 1].forEach((n) => {
      const slide = SLIDES[n];
      if (slide) new Image().src = slide.image;
    });
  }

  /* ------------------------------ render ------------------------------ */
  function show(i, { writeHash = true, push = true } = {}) {
    index = Math.max(0, Math.min(SLIDES.length - 1, i));
    const slide = SLIDES[index];

    loadImage(slide);
    el.title.textContent = slide.title;
    el.desc.textContent = slide.description;
    el.counter.textContent = `${index + 1} / ${SLIDES.length}`;
    el.prev.disabled = index === 0;
    el.next.disabled = index === SLIDES.length - 1;
    dots.forEach((d, n) => d.setAttribute("aria-current", String(n === index)));
    el.permalink.textContent = "Copy link to this slide (" + hashFor(slide) + ")";

    if (writeHash && location.hash !== hashFor(slide)) {
      // pushState keeps the back button working; it never scrolls the page.
      history[push ? "pushState" : "replaceState"](null, "", hashFor(slide));
    }
    preloadNeighbours(index);
  }

  /* --------------------------- hash handling --------------------------- */
  function indexFromHash() {
    const match = /^#slide-(.+)$/.exec(decodeURIComponent(location.hash));
    if (!match) return -1;
    return SLIDES.findIndex((s) => s.name === match[1]);
  }

  function syncFromHash() {
    const i = indexFromHash();
    if (i >= 0) show(i, { writeHash: false });
  }

  // Fires for manual URL edits, external links and back/forward navigation.
  window.addEventListener("hashchange", syncFromHash);

  /* ------------------------------ controls ------------------------------ */
  el.prev.addEventListener("click", () => show(index - 1));
  el.next.addEventListener("click", () => show(index + 1));

  el.dots.addEventListener("click", (e) => {
    const dot = e.target.closest(".tour-dot");
    if (dot) show(Number(dot.dataset.index));
  });

  el.stage.addEventListener("keydown", (e) => {
    if (e.key === "ArrowLeft") { e.preventDefault(); show(index - 1); }
    if (e.key === "ArrowRight") { e.preventDefault(); show(index + 1); }
  });

  el.permalink.addEventListener("click", async () => {
    const url = location.origin + location.pathname + location.search + hashFor(SLIDES[index]);
    const original = el.permalink.textContent;
    try {
      await navigator.clipboard.writeText(url);
      el.permalink.textContent = "Copied!";
    } catch {
      el.permalink.textContent = url;
    }
    setTimeout(() => { el.permalink.textContent = original; }, 1800);
  });

  /* ------------------------------- start ------------------------------- */
  const initial = indexFromHash();
  show(initial >= 0 ? initial : 0, { writeHash: initial >= 0, push: false });
})();
</script>
-->