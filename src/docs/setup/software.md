---
title: "Clients"
---

## Freecord Software

<style>
:root {
  /* extra tokens used by the client list */
  --text: #1c2126;
  --text-muted: #5d6b78;
  --surface: #ffffff;
  --surface-alt: #f4f7f9;
  --border: #dde4ea;
  --radius: 10px;
  --shadow-card: 0 1px 2px rgba(20, 30, 40, .06);
  --shadow-lift: 0 6px 18px rgba(20, 30, 40, .12);
  --shadow-modal: 0 20px 60px rgba(20, 30, 40, .28);
}

.cb [hidden] { display: none !important; }
.cb, .cb input, .cb select, .cb button { font-family: var(--font-main); }
.cb { color: var(--text); }
.cb {
  margin-right: 20px;
}

/* ---------- toolbar ---------- */
.cb-toolbar {
  background: var(--surface-alt);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  padding: .85rem;
  margin-bottom: 1.25rem;
}
.cb-searchrow { display: flex; gap: .5rem; flex-wrap: wrap; }
.cb-search {
  flex: 1 1 16rem;
  min-width: 0;
  padding: .6rem .75rem;
  font-size: 1rem;
  color: var(--text);
  background: var(--bg);
  border: 1px solid var(--border);
  border-radius: var(--radius);
}
.cb-search:focus-visible,
.cb select:focus-visible,
.cb input:focus-visible,
.cb button:focus-visible,
.cb-card:focus-visible {
  outline: 2px solid var(--accent);
  outline-offset: 2px;
}
.cb-btn {
  padding: .6rem .9rem;
  font-size: .9rem;
  color: var(--text);
  background: var(--bg);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  cursor: pointer;
}
.cb-btn:hover { background: var(--accent-faded); border-color: var(--accent); }
.cb-btn[aria-expanded="true"] { background: var(--accent-faded); border-color: var(--accent); }

/* ---------- filters ---------- */
.cb-filters {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(11rem, 1fr));
  gap: .7rem;
  margin-top: .85rem;
  padding-top: .85rem;
  border-top: 1px solid var(--border);
}
.cb-field { display: flex; flex-direction: column; gap: .3rem; font-size: .78rem; }
.cb-field > span { font-weight: 600; letter-spacing: .02em; color: var(--text-muted); text-transform: uppercase; }
.cb-field input, .cb-field select {
  padding: .45rem .5rem;
  font-size: .9rem;
  color: var(--text);
  background: var(--bg);
  border: 1px solid var(--border);
  border-radius: 6px;
}
.cb-field--wide { grid-column: 1 / -1; }
.cb-tagbox {
  display: flex; flex-wrap: wrap; gap: .3rem .8rem;
  max-height: 6.5rem; overflow-y: auto;
  padding: .5rem;
  background: var(--bg);
  border: 1px solid var(--border);
  border-radius: 6px;
}
.cb-tagbox label {
  display: inline-flex; align-items: center; gap: .3rem;
  font-size: .85rem; text-transform: none; letter-spacing: 0;
  cursor: pointer;
}
.cb-count { margin: .8rem 0 0; font-size: .82rem; color: var(--text-muted); }

/* ---------- cards ---------- */
.cb-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(16rem, 1fr));
  gap: 1rem;
}
.cb-card {
  display: flex; flex-direction: column; gap: .6rem;
  padding: 1rem;
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: var(--radius);
  box-shadow: var(--shadow-card);
  cursor: pointer;
  transition: transform .12s ease, box-shadow .12s ease, border-color .12s ease;
}
.cb-card:hover { transform: translateY(-2px); border-color: var(--accent); box-shadow: var(--shadow-lift); }
.cb-card h3 {
  margin: 0;
  font-family: var(--font-header);
  font-size: 1.2rem;
  font-weight: 400;
}
.cb-card p { margin: 0; font-size: .9rem; line-height: 1.5; color: var(--text-muted); }
.cb-badges { display: flex; flex-wrap: wrap; gap: .35rem; }
.cb-badge {
  padding: .12rem .5rem;
  font-size: .7rem; font-weight: 600; letter-spacing: .04em; text-transform: uppercase;
  color: var(--accent);
  background: var(--accent-faded);
  border-radius: 999px;
}
.cb-badge--closed { color: #7a5c1e; background: #f3e4c3; }
.cb-tags { display: flex; flex-wrap: wrap; gap: .3rem; }
.cb-tag {
  padding: .12rem .5rem;
  font-family: var(--font-code);
  font-size: .72rem;
  color: var(--text-muted);
  background: var(--surface-alt);
  border: 1px solid var(--border);
  border-radius: 999px;
}
.cb-card-foot { display: flex; align-items: center; justify-content: space-between; gap: .5rem; margin-top: auto; padding-top: .3rem; }
.cb-author { font-size: .78rem; color: var(--text-muted); }
.cb-dl {
  padding: .45rem .8rem;
  font-size: .85rem; font-weight: 600; text-decoration: none; white-space: nowrap;
  color: #10391a;
  background: var(--button);
  border: 1px solid var(--button);
  border-radius: 6px;
}
.cb-dl:hover { background: var(--button-faded); }
.cb-dl[aria-disabled="true"] { color: var(--text-muted); background: var(--surface-alt); border-color: var(--border); cursor: not-allowed; }
.cb-empty {
  padding: 2rem; margin: 0;
  font-size: .95rem; text-align: center; color: var(--text-muted);
  background: var(--surface-alt);
  border: 1px dashed var(--border);
  border-radius: var(--radius);
}

/* ---------- modal ---------- */
.cb-modal {
  position: fixed; inset: 0; z-index: 100;
  display: flex; align-items: center; justify-content: center;
  padding: 1rem;
  background: rgba(15, 22, 30, .55);
}
.cb-modal-panel {
  width: min(34rem, 100%);
  max-height: 85vh; overflow-y: auto;
  padding: 1.4rem;
  background: var(--bg);
  border-radius: var(--radius);
  box-shadow: var(--shadow-modal);
}
.cb-modal-head { display: flex; align-items: flex-start; justify-content: space-between; gap: 1rem; }
.cb-modal-head h2 { margin: 0; font-family: var(--font-header); font-size: 1.5rem; font-weight: 400; }
.cb-close {
  padding: .2rem .55rem;
  font-size: 1.3rem; line-height: 1.2;
  color: var(--text-muted);
  background: none; border: 1px solid var(--border); border-radius: 6px;
  cursor: pointer;
}
.cb-close:hover { color: var(--text); background: var(--surface-alt); }
.cb-modal-desc { margin: .8rem 0 1.1rem; font-size: .95rem; line-height: 1.6; }
.cb-dl-list { display: grid; grid-template-columns: max-content 1fr; gap: .55rem 1rem; margin: 0; font-size: .9rem; }
.cb-dl-list dt { font-weight: 600; color: var(--text-muted); }
.cb-dl-list dd { margin: 0; overflow-wrap: anywhere; }
.cb-dl-list a { color: var(--accent); }
.cb-modal-foot { margin-top: 1.4rem; text-align: right; }

@media (prefers-reduced-motion: reduce) {
  .cb-card { transition: none; }
  .cb-card:hover { transform: none; }
}
</style>

<div class="cb" id="client-browser">
  <div class="cb-toolbar">
    <div class="cb-searchrow">
      <input class="cb-search" id="cb-q" type="search" placeholder="Search clients by name, description, author or tag…" aria-label="Search clients">
      <button class="cb-btn" id="cb-toggle" type="button" aria-expanded="false" aria-controls="cb-filters">Filters</button>
      <button class="cb-btn" id="cb-reset" type="button">Reset</button>
    </div>

    <div class="cb-filters" id="cb-filters" hidden>
      <label class="cb-field"><span>Name</span><input id="f-name" type="text" placeholder="e.g. Cinny"></label>
      <label class="cb-field"><span>Description</span><input id="f-desc" type="text" placeholder="contains…"></label>
      <label class="cb-field"><span>Author</span><select id="f-author"></select></label>
      <label class="cb-field"><span>Open source</span>
        <select id="f-oss"><option value="">Any</option><option value="yes">Yes</option><option value="no">No</option></select>
      </label>
      <label class="cb-field"><span>Mobile</span>
        <select id="f-mobile"><option value="">Any</option><option value="yes">Mobile</option><option value="no">Desktop / web only</option></select>
      </label>
      <label class="cb-field"><span>Website link</span>
        <select id="f-website"><option value="">Any</option><option value="yes">Has link</option><option value="no">No link</option></select>
      </label>
      <label class="cb-field"><span>Download link</span>
        <select id="f-download"><option value="">Any</option><option value="yes">Has link</option><option value="no">No link</option></select>
      </label>
      <label class="cb-field"><span>Source link</span>
        <select id="f-source"><option value="">Any</option><option value="yes">Has link</option><option value="no">No link</option></select>
      </label>
      <label class="cb-field"><span>Tag match</span>
        <select id="f-tagmode"><option value="any">Any selected</option><option value="all">All selected</option></select>
      </label>
      <label class="cb-field"><span>Sort</span>
        <select id="f-sort">
          <option value="name-asc">Name A–Z</option>
          <option value="name-desc">Name Z–A</option>
          <option value="author-asc">Author A–Z</option>
        </select>
      </label>
      <div class="cb-field cb-field--wide">
        <span id="f-tags-label">Tags</span>
        <div class="cb-tagbox" id="f-tags" role="group" aria-labelledby="f-tags-label"></div>
      </div>
    </div>

    <p class="cb-count" id="cb-count" role="status" aria-live="polite"></p>
  </div>

  <div class="cb-grid" id="cb-grid"></div>
  <p class="cb-empty" id="cb-empty" hidden>No clients match your search or filters.</p>

  <div class="cb-modal" id="cb-modal" hidden role="dialog" aria-modal="true" aria-labelledby="cb-modal-title">
    <div class="cb-modal-panel" id="cb-modal-panel">
      <div class="cb-modal-head">
        <h2 id="cb-modal-title"></h2>
        <button class="cb-close" id="cb-modal-close" type="button" aria-label="Close details">&times;</button>
      </div>
      <p class="cb-modal-desc" id="cb-modal-desc"></p>
      <dl class="cb-dl-list" id="cb-modal-meta"></dl>
      <div class="cb-modal-foot" id="cb-modal-foot"></div>
    </div>
  </div>
</div>

<script>
(() => {
  "use strict";

  /* ------------------------------------------------------------------
     Client data — plain JSON, no schema beyond these keys.
     Swap this literal for `await fetch("clients.json").then(r => r.json())`
     and nothing else in this file has to change.
  ------------------------------------------------------------------ */

  /* EXAMPLE


  {
  "name": "SchildiChat",
  "description": "Matrix client forked from Element with a message-bubble layout, unified chat list and extra customisation options. Ships on Android, iOS, web and desktop, with full end-to-end encryption and support for any homeserver you point it at.",
  "authors": ["SpiritCroc", "SchildiChat contributors"],
  "website": "https://schildi.chat",
  "download": "https://schildi.chat/android/next/",
  "openSource": true,
  "source": "https://github.com/SchildiChat/schildichat-android",
  "mobile": true,
  "tags": ["client", "server", "Matrix", "Encrypted", "Mobile", "Android", "iOS", "Desktop", "Web", "Fork", "Self-hostable"]
}


  */

  const CLIENTS = [
    {
      "name": "Official Client",
      "description": "Official Freecord client. Always up-to-date with the Freecord protocol.",
      "authors": ["zonomic"],
      "website": "https://codeberg.org/zion8992/freecord",
      "download": "/docs/setup/installation",
      "openSource": true,
      "source": "https://codeberg.org/zion8992/freecord",
      "mobile": false,
      "tags": ["client", "Work In Progress", "CLI"]
    },
    {
      "name": "Official Server",
      "description": "Official Freecord server. Always up-to-date with the Freecord protocol.",
      "authors": ["zonomic"],
      "website": "https://codeberg.org/zion8992/freecord",
      "download": "/docs/setup/installation",
      "openSource": true,
      "source": "https://codeberg.org/zion8992/freecord",
      "mobile": false,
      "tags": ["server", "Work In Progress", "CLI"]
    }
  ];

  /* ---------------------------- helpers ---------------------------- */
  const $ = (id) => document.getElementById(id);
  const esc = (s) => String(s).replace(/[&<>"']/g, (c) =>
    ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));
  const hasLink = (v) => typeof v === "string" && v.trim() !== "";
  const norm = (s) => String(s ?? "").toLowerCase();
  const authorList = (c) => (c.authors || []).join(", ");
  const slug = (s) => norm(s).replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");

  // "" = any, "yes"/"no" otherwise
  const triBool = (mode, value) => !mode || (mode === "yes" ? value === true : value !== true);
  const triLink = (mode, value) => !mode || (mode === "yes" ? hasLink(value) : !hasLink(value));

  const el = {
    q: $("cb-q"), toggle: $("cb-toggle"), reset: $("cb-reset"), filters: $("cb-filters"),
    name: $("f-name"), desc: $("f-desc"), author: $("f-author"), oss: $("f-oss"),
    mobile: $("f-mobile"), website: $("f-website"), download: $("f-download"),
    source: $("f-source"), tagmode: $("f-tagmode"), sort: $("f-sort"), tags: $("f-tags"),
    grid: $("cb-grid"), empty: $("cb-empty"), count: $("cb-count"),
    modal: $("cb-modal"), modalTitle: $("cb-modal-title"), modalDesc: $("cb-modal-desc"),
    modalMeta: $("cb-modal-meta"), modalFoot: $("cb-modal-foot"), modalClose: $("cb-modal-close")
  };

  const byId = new Map(CLIENTS.map((c) => [slug(c.name), c]));

  /* ------------------- build dynamic filter options ------------------- */
  const authors = [...new Set(CLIENTS.flatMap((c) => c.authors || []))].sort((a, b) => a.localeCompare(b));
  el.author.innerHTML = '<option value="">Any author</option>' +
    authors.map((a) => `<option value="${esc(a)}">${esc(a)}</option>`).join("");

  const tags = [...new Set(CLIENTS.flatMap((c) => c.tags || []))].sort((a, b) => a.localeCompare(b));
  el.tags.innerHTML = tags.map((t) =>
    `<label><input type="checkbox" value="${esc(t)}"> ${esc(t)}</label>`).join("");

  /* ---------------------------- filtering ---------------------------- */
  function selectedTags() {
    return [...el.tags.querySelectorAll("input:checked")].map((i) => i.value);
  }

  function matches(c) {
    const q = norm(el.q.value.trim());
    if (q) {
      const haystack = [c.name, c.description, authorList(c), (c.tags || []).join(" ")].map(norm).join(" ");
      if (!q.split(/\s+/).every((word) => haystack.includes(word))) return false;
    }
    if (el.name.value.trim() && !norm(c.name).includes(norm(el.name.value.trim()))) return false;
    if (el.desc.value.trim() && !norm(c.description).includes(norm(el.desc.value.trim()))) return false;
    if (el.author.value && !(c.authors || []).includes(el.author.value)) return false;
    if (!triBool(el.oss.value, c.openSource)) return false;
    if (!triBool(el.mobile.value, c.mobile)) return false;
    if (!triLink(el.website.value, c.website)) return false;
    if (!triLink(el.download.value, c.download)) return false;
    if (!triLink(el.source.value, c.source)) return false;

    const picked = selectedTags();
    if (picked.length) {
      const own = c.tags || [];
      const ok = el.tagmode.value === "all"
        ? picked.every((t) => own.includes(t))
        : picked.some((t) => own.includes(t));
      if (!ok) return false;
    }
    return true;
  }

  function sortClients(list) {
    const cmp = {
      "name-asc": (a, b) => a.name.localeCompare(b.name),
      "name-desc": (a, b) => b.name.localeCompare(a.name),
      "author-asc": (a, b) => authorList(a).localeCompare(authorList(b)) || a.name.localeCompare(b.name)
    }[el.sort.value];
    return [...list].sort(cmp);
  }

  /* ----------------------------- rendering ----------------------------- */
  function cardHTML(c) {
    const id = slug(c.name);
    const badges = [
      c.openSource
        ? '<span class="cb-badge">Open source</span>'
        : '<span class="cb-badge cb-badge--closed">Closed source</span>',
      `<span class="cb-badge">${c.mobile ? "Mobile" : "Desktop / web"}</span>`
    ].join("");
    const tagPills = (c.tags || []).map((t) => `<span class="cb-tag">${esc(t)}</span>`).join("");
    const dl = hasLink(c.download)
      ? `<a class="cb-dl" href="${esc(c.download)}" target="_blank" rel="noopener noreferrer">Download</a>`
      : '<span class="cb-dl" aria-disabled="true">No download</span>';

    return `
      <article class="cb-card" data-id="${esc(id)}" tabindex="0" role="button"
               aria-label="Show details for ${esc(c.name)}">
        <h3>${esc(c.name)}</h3>
        <div class="cb-badges">${badges}</div>
        <p>${esc(c.description)}</p>
        <div class="cb-tags">${tagPills}</div>
        <div class="cb-card-foot">
          <span class="cb-author">${esc(authorList(c) || "Unknown author")}</span>
          ${dl}
        </div>
      </article>`;
  }

  function render() {
    const list = sortClients(CLIENTS.filter(matches));
    el.grid.innerHTML = list.map(cardHTML).join("");
    el.empty.hidden = list.length > 0;
    el.count.textContent = `Showing ${list.length} of ${CLIENTS.length} clients`;
  }

  /* ------------------------------- modal ------------------------------- */
  let lastFocused = null;

  function link(url) {
    return hasLink(url)
      ? `<a href="${esc(url)}" target="_blank" rel="noopener noreferrer">${esc(url)}</a>`
      : "—";
  }

  function openModal(id) {
    const c = byId.get(id);
    if (!c) return;
    lastFocused = document.activeElement;

    el.modalTitle.textContent = c.name;
    el.modalDesc.textContent = c.description;
    el.modalMeta.innerHTML = [
      ["Author(s)", esc(authorList(c) || "—")],
      ["Website", link(c.website)],
      ["Download", link(c.download)],
      ["Open source", c.openSource ? "Yes" : "No"],
      ["Source code", c.openSource ? link(c.source) : "—"],
      ["Mobile", c.mobile ? "Yes" : "No"],
      ["Tags", (c.tags || []).length
        ? `<span class="cb-tags">${c.tags.map((t) => `<span class="cb-tag">${esc(t)}</span>`).join("")}</span>`
        : "—"]
    ].map(([k, v]) => `<dt>${k}</dt><dd>${v}</dd>`).join("");

    el.modalFoot.innerHTML = hasLink(c.download)
      ? `<a class="cb-dl" href="${esc(c.download)}" target="_blank" rel="noopener noreferrer">Download ${esc(c.name)}</a>`
      : "";

    el.modal.hidden = false;
    el.modalClose.focus();
  }

  function closeModal() {
    el.modal.hidden = true;
    if (lastFocused && document.contains(lastFocused)) lastFocused.focus();
    lastFocused = null;
  }

  /* ------------------------------ events ------------------------------ */
  el.toggle.addEventListener("click", () => {
    const open = el.filters.hidden;
    el.filters.hidden = !open;
    el.toggle.setAttribute("aria-expanded", String(open));
  });

  el.reset.addEventListener("click", () => {
    el.q.value = el.name.value = el.desc.value = "";
    [el.author, el.oss, el.mobile, el.website, el.download, el.source].forEach((s) => (s.value = ""));
    el.tagmode.value = "any";
    el.sort.value = "name-asc";
    el.tags.querySelectorAll("input:checked").forEach((i) => (i.checked = false));
    render();
    el.q.focus();
  });

  ["input", "change"].forEach((evt) => {
    el.q.addEventListener(evt, render);
    el.filters.addEventListener(evt, render);
  });

  // One delegated listener: card opens the modal, the download link does not.
  el.grid.addEventListener("click", (e) => {
    if (e.target.closest(".cb-dl")) return;
    const card = e.target.closest(".cb-card");
    if (card) openModal(card.dataset.id);
  });

  el.grid.addEventListener("keydown", (e) => {
    if (e.key !== "Enter" && e.key !== " ") return;
    if (e.target.closest(".cb-dl")) return;
    const card = e.target.closest(".cb-card");
    if (!card) return;
    e.preventDefault();
    openModal(card.dataset.id);
  });

  el.modalClose.addEventListener("click", closeModal);
  el.modal.addEventListener("click", (e) => { if (e.target === el.modal) closeModal(); });
  document.addEventListener("keydown", (e) => {
    if (e.key === "Escape" && !el.modal.hidden) closeModal();
  });

  render();
})();
</script>
