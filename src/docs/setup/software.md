---
title: "Sofware"
---

If there is any software that is missing, please submit it [here](/links/chat)

<!-- ====================================================================
     SOFTWARE DIRECTORY
     ==================================================================== -->
<style>
/* ---- layout ------------------------------------------------------- */
.sw { font-family: var(--font-main); color: var(--ink); max-width: var(--measure); margin: 0 auto; }
.sw * { box-sizing: border-box; }

.sw-toolbar {
    display: grid; gap: .9rem;
    background: var(--surface); border: 1px solid var(--border);
    border-radius: var(--radius-lg); padding: 1rem 1.1rem; margin-bottom: 1.25rem;
}
.sw-row { display: flex; flex-wrap: wrap; gap: .6rem; align-items: center; }
.sw-label { font-size: .75rem; text-transform: uppercase; letter-spacing: .06em; color: var(--ink-muted); min-width: 4.5rem; }

.sw-search {
    flex: 1 1 14rem; font: inherit; font-size: .95rem; color: var(--ink);
    padding: .55rem .9rem; border: 1px solid var(--border); border-radius: var(--radius-pill);
    background: var(--bg); outline: none; transition: box-shadow .2s var(--ease-out);
}
.sw-search:focus { border-color: var(--accent); box-shadow: 0 0 0 4px var(--glow); }

.sw-select {
    font: inherit; font-size: .85rem; color: var(--ink);
    padding: .4rem 2rem .4rem .8rem; border: 1px solid var(--border);
    border-radius: var(--radius-pill); background: var(--bg); cursor: pointer;
}
.sw-select:focus { outline: none; border-color: var(--accent); box-shadow: 0 0 0 4px var(--glow); }

.sw-chips { display: flex; flex-wrap: wrap; gap: .4rem; }
.sw-chip {
    font: inherit; font-size: .82rem; cursor: pointer; color: var(--ink);
    padding: .3rem .8rem; border: 1px solid var(--border); border-radius: var(--radius-pill);
    background: var(--bg); transition: all .18s var(--ease-out);
}
.sw-chip:hover { border-color: var(--accent); color: var(--accent-dark); }
.sw-chip[aria-pressed="true"] { background: var(--accent); border-color: var(--accent); color: #fff; }
.sw-chip--tag { font-family: var(--font-code); font-size: .75rem; }
.sw-chip--toggle i { margin-right: .3rem; }

.sw-summary { display: flex; justify-content: space-between; align-items: center; font-size: .85rem; color: var(--ink-muted); margin-bottom: .75rem; }
.sw-reset { font: inherit; font-size: .85rem; color: var(--accent-dark); background: none; border: 0; cursor: pointer; text-decoration: underline; }

/* ---- grid & cards -------------------------------------------------- */
.sw-grid { display: grid; grid-template-columns: repeat(auto-fill, minmax(260px, 1fr)); gap: 1rem; }
.sw-empty { grid-column: 1 / -1; text-align: center; padding: 3rem 1rem; color: var(--ink-muted); }

.sw-card {
    display: flex; flex-direction: column; gap: .6rem; text-align: left; font: inherit; color: inherit;
    background: var(--bg); border: 1px solid var(--border); border-radius: var(--radius-lg);
    padding: 1rem 1.1rem; cursor: pointer; box-shadow: 0 1px 3px var(--shadow);
    transition: transform .25s var(--ease-out), box-shadow .25s var(--ease-out), border-color .25s;
}
.sw-card:hover { transform: translateY(-3px); box-shadow: 0 10px 28px var(--shadow-lift); border-color: var(--accent-faded); }
.sw-card:focus-visible { outline: none; box-shadow: 0 0 0 4px var(--glow); }
.sw-card--discontinued { opacity: .7; }

.sw-head { display: flex; gap: .8rem; align-items: center; }
.sw-icon { width: 48px; height: 48px; flex: none; object-fit: cover; border-radius: var(--radius); border: 1px solid var(--border); background: var(--surface); }
.sw-icon--lg { width: 64px; height: 64px; }
.sw-name { font-family: var(--font-header); font-weight: 400; font-size: 1.15rem; margin: 0 0 .25rem; }
.sw-badges { display: flex; flex-wrap: wrap; gap: .3rem; }

.sw-badge { font-size: .68rem; font-weight: 700; text-transform: uppercase; letter-spacing: .05em; padding: .15rem .55rem; border-radius: var(--radius-pill); }
.sw-badge--kind         { background: var(--accent-pale); color: var(--accent-dark); }
.sw-badge--stable       { background: var(--button-faded); color: var(--button-dark); }
.sw-badge--beta         { background: var(--accent-faded); color: var(--accent-deep); }
.sw-badge--alpha        { background: color-mix(in srgb, var(--accent-warm) 18%, white); color: var(--accent-warm); }
.sw-badge--discontinued { background: var(--border); color: var(--ink-muted); }
.sw-badge--planned      { background: transparent; color: var(--ink-muted); border: 1px dashed var(--ink-muted); }

.sw-tagline { margin: 0; font-size: .92rem; color: var(--ink-muted); line-height: 1.4; }
.sw-platforms { display: flex; flex-wrap: wrap; gap: .5rem; font-size: 1.1rem; color: var(--ink-muted); }
.sw-platforms i { transition: color .18s; }
.sw-card:hover .sw-platforms i { color: var(--accent); }

.sw-tags { display: flex; flex-wrap: wrap; gap: .3rem; }
.sw-tag { font-family: var(--font-code); font-size: .72rem; padding: .1rem .5rem; background: var(--surface); border: 1px solid var(--border); border-radius: var(--radius-pill); color: var(--ink-muted); }

.sw-foot { display: flex; justify-content: space-between; align-items: center; gap: .5rem; margin-top: auto; padding-top: .4rem; font-size: .8rem; color: var(--ink-muted); }
.sw-foot span:first-child { overflow: hidden; text-overflow: ellipsis; white-space: nowrap; }
.sw-lfd { flex: none; color: var(--button-dark); font-weight: 600; }
.sw-lfd i { margin-right: .25rem; }

/* ---- modal ---------------------------------------------------------- */
.sw-modal { border: 0; padding: 0; width: min(640px, calc(100% - 2rem)); border-radius: var(--radius-lg); box-shadow: 0 24px 64px var(--shadow-lift); color: var(--ink); font-family: var(--font-main); }
.sw-modal::backdrop { background: rgba(27, 42, 56, .55); backdrop-filter: blur(3px); }
.sw-modal[open] { animation: sw-pop .3s var(--ease-spring); }
@keyframes sw-pop { from { transform: scale(.94) translateY(8px); opacity: 0; } }

.sw-modal-body { padding: 1.6rem 1.75rem 1.75rem; position: relative; }
.sw-close { position: absolute; top: .8rem; right: .8rem; width: 34px; height: 34px; border: 0; border-radius: 50%; background: var(--surface); color: var(--ink-muted); font-size: 1.1rem; cursor: pointer; transition: background .18s; }
.sw-close:hover { background: var(--accent-faded); color: var(--accent-deep); }
.sw-modal .sw-name { font-size: 1.6rem; }
.sw-modal .sw-tagline { margin: .8rem 0 1.2rem; font-size: 1rem; }

.sw-dl { display: grid; grid-template-columns: max-content 1fr; gap: .6rem 1.2rem; margin: 0 0 1.4rem; font-size: .92rem; }
.sw-dl dt { color: var(--ink-muted); font-size: .8rem; text-transform: uppercase; letter-spacing: .05em; padding-top: .15rem; }
.sw-dl dd { margin: 0; }
.sw-dl .sw-platforms { font-size: .95rem; color: var(--ink); gap: .8rem; }
.sw-dl .sw-platforms i { color: var(--accent); margin-right: .3rem; }
.sw-yes { color: var(--button-dark); font-weight: 600; }
.sw-no  { color: var(--ink-muted); }
.sw-author-link { color: var(--accent-dark); text-decoration: none; border-bottom: 1px dotted var(--accent); }
.sw-author-link:hover { color: var(--accent-deep); }

.sw-links { display: flex; flex-wrap: wrap; gap: .5rem; padding-top: 1rem; border-top: 1px solid var(--border); }
.sw-btn { display: inline-flex; align-items: center; gap: .4rem; font: inherit; font-size: .9rem; font-weight: 600; text-decoration: none; padding: .55rem 1.1rem; border-radius: var(--radius-pill); border: 1px solid var(--border); color: var(--accent-dark); background: var(--bg); transition: all .18s var(--ease-out); }
.sw-btn:hover { border-color: var(--accent); background: var(--accent-pale); }
.sw-btn--primary { background: var(--button); border-color: var(--button); color: #fff; }
.sw-btn--primary:hover { background: var(--button-hover); border-color: var(--button-hover); }
</style>

<div id="sw-app" class="sw"></div>

<!-- ====================================================================
     DATA — pure JSON. Edit this block to add/remove software.
     Optional fields: tagline, icon, license, languages, links.website,
     links.repo, links.docs. Authors can be a string or {name, url}.
     Platforms reference the keys in "platforms"; icon = Bootstrap Icon id.
     ==================================================================== -->
<script type="application/json" id="sw-data">
{
  "platforms": {
    "linux":   { "label": "Linux",   "icon": "ubuntu" },
    "windows": { "label": "Windows", "icon": "windows" },
    "macos":   { "label": "macOS",   "icon": "apple" },
    "android": { "label": "Android", "icon": "android2" },
    "ios":     { "label": "iOS",     "icon": "phone" },
    "web":     { "label": "Web",     "icon": "browser-chrome" },
    "cli":     { "label": "Terminal","icon": "terminal" },
    "docker":  { "label": "Docker",  "icon": "box-seam" }
  },
  "software": [
    {
      "name": "Official Client",
      "tagline": "Official Freecord Client",
      "kind": "Client",
      "authors": [{ "name": "Zonomic", "url": "https://example.org/" }, "Zonomic"],
      "platforms": ["linux", "windows", "macos"],
      "tags": ["cli"],
      "license": "Zonomic Project License",
      "openSource": true,
      "languages": ["Go"],
      "status": "alpha",
      "lookingForDevelopers": true,
      "links": {
        "website": "https://example.org/lumen",
        "repo": "https://example.org/git/lumen",
        "download": "https://example.org/lumen/download",
        "docs": "https://example.org/lumen/docs"
    }
    },
        {
      "name": "Lumen",
      "tagline": "The reference desktop & web client with end-to-end encryption and spaces.",
      "kind": "Client",
      "icon": "https://placehold.co/96x96/4b8dc7/ffffff?text=L",
      "authors": [{ "name": "Core Team", "url": "https://example.org/team" }, "Ada Lovelace"],
      "platforms": ["web", "linux", "windows", "macos"],
      "tags": ["e2ee", "voice", "video", "spaces", "reference"],
      "license": "Apache-2.0",
      "openSource": true,
      "languages": ["TypeScript", "Rust"],
      "status": "Stable",
      "lookingForDevelopers": false,
      "links": {
        "website": "https://example.org/lumen",
        "repo": "https://example.org/git/lumen",
        "download": "https://example.org/lumen/download",
        "docs": "https://example.org/lumen/docs"
    }
    },
    {
      "name": "Lumen",
      "tagline": "The reference desktop & web client with end-to-end encryption and spaces.",
      "kind": "Client",
      "icon": "https://placehold.co/96x96/4b8dc7/ffffff?text=L",
      "authors": [{ "name": "Core Team", "url": "https://example.org/team" }, "Ada Lovelace"],
      "platforms": ["web", "linux", "windows", "macos"],
      "tags": ["e2ee", "voice", "video", "spaces", "reference"],
      "license": "Apache-2.0",
      "openSource": true,
      "languages": ["TypeScript", "Rust"],
      "status": "Stable",
      "lookingForDevelopers": false,
      "links": {
        "website": "https://example.org/lumen",
        "repo": "https://example.org/git/lumen",
        "download": "https://example.org/lumen/download",
        "docs": "https://example.org/lumen/docs"
      }
    }
  ]
}
</script>

<script>
(() => {
    /* ---- data ---------------------------------------------------- */
    const DATA      = JSON.parse(document.getElementById('sw-data').textContent);
    const PLATFORMS = DATA.platforms || {};
    const SOFTWARE  = DATA.software  || [];

    const KINDS    = ['Client', 'Server', 'Authserver'];
    const STATUSES = ['Stable', 'Beta', 'Alpha', 'Discontinued', 'Planned'];

    /* ---- helpers ------------------------------------------------- */
    const esc = s => String(s ?? '').replace(/[&<>"']/g, c =>
        ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[c]));
    const authorName = a => typeof a === 'string' ? a : a.name;
    const authorUrl  = a => typeof a === 'string' ? null : a.url;
    const uniqSorted = arr => [...new Set(arr)].sort((a, b) => a.localeCompare(b));
    const platform   = key => PLATFORMS[key] || { label: key, icon: 'cpu' };

    // Authors are derived from the software list — not stored separately.
    const AUTHORS = (() => {
        const map = new Map();
        SOFTWARE.forEach(s => (s.authors || []).forEach(a => {
            if (!map.has(authorName(a))) map.set(authorName(a), a);
        }));
        return [...map.values()].sort((a, b) => authorName(a).localeCompare(authorName(b)));
    })();
    const TAGS       = uniqSorted(SOFTWARE.flatMap(s => s.tags || []));
    const PLAT_KEYS  = uniqSorted(SOFTWARE.flatMap(s => s.platforms || []));

    /* ---- state --------------------------------------------------- */
    const state = { q: '', kind: '', status: '', platform: '', author: '', tags: new Set(), openSource: false, lfd: false };
    const isFiltered = () => state.q || state.kind || state.status || state.platform || state.author || state.tags.size || state.openSource || state.lfd;

    function matches(s) {
        if (state.kind     && s.kind   !== state.kind)                                 return false;
        if (state.status   && s.status !== state.status)                               return false;
        if (state.platform && !(s.platforms || []).includes(state.platform))           return false;
        if (state.author   && !(s.authors || []).some(a => authorName(a) === state.author)) return false;
        if (state.openSource && !s.openSource)                                         return false;
        if (state.lfd      && !s.lookingForDevelopers)                                 return false;
        for (const t of state.tags) if (!(s.tags || []).includes(t))                   return false;
        if (state.q) {
            const hay = [s.name, s.tagline, s.license, ...(s.tags || []), ...(s.languages || []),
                         ...(s.authors || []).map(authorName)].join(' ').toLowerCase();
            if (!hay.includes(state.q.toLowerCase())) return false;
        }
        return true;
    }

    /* ---- render pieces ------------------------------------------- */
    const badge = (text, cls) => `<span class="sw-badge sw-badge--${cls}">${esc(text)}</span>`;
    const statusBadge = s => badge(s.status, s.status.toLowerCase());
    const iconImg = (s, lg) => s.icon
        ? `<img class="sw-icon${lg ? ' sw-icon--lg' : ''}" src="${esc(s.icon)}" alt="" loading="lazy">` : '';
    const platIcons = (s, withLabel) => (s.platforms || []).map(k => {
        const p = platform(k);
        return `<span title="${esc(p.label)}"><i class="bi bi-${esc(p.icon)}" aria-hidden="true"></i>${withLabel ? esc(p.label) : `<span class="sw-sr" hidden>${esc(p.label)}</span>`}</span>`;
    }).join('');
    const authorsHtml = s => (s.authors || []).map(a => authorUrl(a)
        ? `<a class="sw-author-link" href="${esc(authorUrl(a))}" target="_blank" rel="noopener">${esc(authorName(a))}</a>`
        : esc(authorName(a))).join(', ');

    function card(s, i) {
        return `
        <button type="button" class="sw-card${s.status === 'Discontinued' ? ' sw-card--discontinued' : ''}" data-index="${i}">
            <div class="sw-head">
                ${iconImg(s)}
                <div>
                    <h3 class="sw-name">${esc(s.name)}</h3>
                    <div class="sw-badges">${badge(s.kind, 'kind')}${statusBadge(s)}</div>
                </div>
            </div>
            ${s.tagline ? `<p class="sw-tagline">${esc(s.tagline)}</p>` : ''}
            <div class="sw-platforms">${platIcons(s)}</div>
            <div class="sw-tags">${(s.tags || []).slice(0, 4).map(t => `<span class="sw-tag">${esc(t)}</span>`).join('')}
                ${(s.tags || []).length > 4 ? `<span class="sw-tag">+${s.tags.length - 4}</span>` : ''}</div>
            <div class="sw-foot">
                <span>by ${esc((s.authors || []).map(authorName).join(', '))}</span>
                ${s.lookingForDevelopers ? `<span class="sw-lfd"><i class="bi bi-people-fill"></i>Devs wanted</span>` : ''}
            </div>
        </button>`;
    }

    function toolbar() {
        const opt = (v, label = v) => `<option value="${esc(v)}">${esc(label)}</option>`;
        return `
        <div class="sw-toolbar">
            <div class="sw-row">
                <input class="sw-search" type="search" placeholder="Search name, tag, language, author…" aria-label="Search software">
                <select class="sw-select" data-filter="status" aria-label="Status"><option value="">Any status</option>${STATUSES.map(s => opt(s)).join('')}</select>
                <select class="sw-select" data-filter="platform" aria-label="Platform"><option value="">Any platform</option>${PLAT_KEYS.map(k => opt(k, platform(k).label)).join('')}</select>
                <select class="sw-select" data-filter="author" aria-label="Author"><option value="">Any author</option>${AUTHORS.map(a => opt(authorName(a))).join('')}</select>
            </div>
            <div class="sw-row">
                <span class="sw-label">Kind</span>
                <div class="sw-chips" data-group="kind">
                    <button type="button" class="sw-chip" data-value="" aria-pressed="true">All</button>
                    ${KINDS.map(k => `<button type="button" class="sw-chip" data-value="${esc(k)}" aria-pressed="false">${esc(k)}</button>`).join('')}
                </div>
                <div class="sw-chips" style="margin-left:auto">
                    <button type="button" class="sw-chip sw-chip--toggle" data-toggle="openSource" aria-pressed="false"><i class="bi bi-code-slash"></i>Open source</button>
                    <button type="button" class="sw-chip sw-chip--toggle" data-toggle="lfd" aria-pressed="false"><i class="bi bi-people-fill"></i>Looking for devs</button>
                </div>
            </div>
            <div class="sw-row">
                <span class="sw-label">Tags</span>
                <div class="sw-chips" data-group="tags">
                    ${TAGS.map(t => `<button type="button" class="sw-chip sw-chip--tag" data-value="${esc(t)}" aria-pressed="false">#${esc(t)}</button>`).join('')}
                </div>
            </div>
        </div>
        <div class="sw-summary"><span class="sw-count"></span><button type="button" class="sw-reset" hidden>Clear filters</button></div>
        <div class="sw-grid"></div>
        <dialog class="sw-modal" aria-labelledby="sw-modal-title"></dialog>`;
    }

    function detail(s) {
        const yesno = b => b ? `<span class="sw-yes"><i class="bi bi-check-circle-fill"></i> Yes</span>` : `<span class="sw-no"><i class="bi bi-x-circle"></i> No</span>`;
        const L = s.links || {};
        const link = (url, label, icon, primary) => url
            ? `<a class="sw-btn${primary ? ' sw-btn--primary' : ''}" href="${esc(url)}" target="_blank" rel="noopener"><i class="bi bi-${icon}"></i>${label}</a>` : '';
        return `
        <div class="sw-modal-body">
            <button type="button" class="sw-close" aria-label="Close"><i class="bi bi-x-lg"></i></button>
            <div class="sw-head">
                ${iconImg(s, true)}
                <div>
                    <h3 class="sw-name" id="sw-modal-title">${esc(s.name)}</h3>
                    <div class="sw-badges">${badge(s.kind, 'kind')}${statusBadge(s)}
                        ${s.lookingForDevelopers ? badge('Looking for developers', 'stable') : ''}</div>
                </div>
            </div>
            ${s.tagline ? `<p class="sw-tagline">${esc(s.tagline)}</p>` : ''}
            <dl class="sw-dl">
                <dt>Authors</dt><dd>${authorsHtml(s) || '—'}</dd>
                <dt>Platforms</dt><dd><div class="sw-platforms">${platIcons(s, true) || '—'}</div></dd>
                <dt>Tags</dt><dd><div class="sw-tags">${(s.tags || []).map(t => `<span class="sw-tag">${esc(t)}</span>`).join('') || '—'}</div></dd>
                <dt>Open source</dt><dd>${yesno(s.openSource)}</dd>
                ${s.license   ? `<dt>License</dt><dd>${esc(s.license)}</dd>` : ''}
                ${s.languages?.length ? `<dt>Languages</dt><dd>${s.languages.map(esc).join(', ')}</dd>` : ''}
                <dt>Status</dt><dd>${esc(s.status)}</dd>
                <dt>Needs developers</dt><dd>${yesno(s.lookingForDevelopers)}</dd>
            </dl>
            <div class="sw-links">
                ${link(L.download, 'Download', 'download', true)}
                ${link(L.website,  'Website',  'globe2')}
                ${link(L.repo,     'Source',   'git')}
                ${link(L.docs,     'Docs',     'book')}
            </div>
        </div>`;
    }

    /* ---- mount --------------------------------------------------- */
    const root = document.getElementById('sw-app');
    root.innerHTML = toolbar();
    const grid   = root.querySelector('.sw-grid');
    const count  = root.querySelector('.sw-count');
    const reset  = root.querySelector('.sw-reset');
    const modal  = root.querySelector('.sw-modal');

    function update() {
        const hits = SOFTWARE.map((s, i) => [s, i]).filter(([s]) => matches(s));
        grid.innerHTML = hits.length
            ? hits.map(([s, i]) => card(s, i)).join('')
            : `<div class="sw-empty"><i class="bi bi-search" style="font-size:2rem"></i><p>Nothing matches these filters.</p></div>`;
        count.textContent = `${hits.length} of ${SOFTWARE.length} projects`;
        reset.hidden = !isFiltered();
    }

    /* ---- events -------------------------------------------------- */
    root.querySelector('.sw-search').addEventListener('input', e => { state.q = e.target.value.trim(); update(); });

    root.querySelectorAll('.sw-select').forEach(sel =>
        sel.addEventListener('change', e => { state[e.target.dataset.filter] = e.target.value; update(); }));

    root.querySelector('[data-group="kind"]').addEventListener('click', e => {
        const chip = e.target.closest('.sw-chip'); if (!chip) return;
        state.kind = chip.dataset.value;
        chip.parentElement.querySelectorAll('.sw-chip').forEach(c => c.setAttribute('aria-pressed', c === chip));
        update();
    });

    root.querySelector('[data-group="tags"]').addEventListener('click', e => {
        const chip = e.target.closest('.sw-chip'); if (!chip) return;
        const t = chip.dataset.value;
        state.tags.has(t) ? state.tags.delete(t) : state.tags.add(t);
        chip.setAttribute('aria-pressed', state.tags.has(t));
        update();
    });

    root.querySelectorAll('[data-toggle]').forEach(chip => chip.addEventListener('click', () => {
        const k = chip.dataset.toggle;
        state[k] = !state[k];
        chip.setAttribute('aria-pressed', state[k]);
        update();
    }));

    reset.addEventListener('click', () => {
        Object.assign(state, { q: '', kind: '', status: '', platform: '', author: '', openSource: false, lfd: false });
        state.tags.clear();
        root.querySelector('.sw-search').value = '';
        root.querySelectorAll('.sw-select').forEach(s => s.value = '');
        root.querySelectorAll('.sw-chip').forEach(c => c.setAttribute('aria-pressed', c.dataset.value === ''));
        update();
    });

    grid.addEventListener('click', e => {
        const c = e.target.closest('.sw-card'); if (!c) return;
        modal.innerHTML = detail(SOFTWARE[+c.dataset.index]);
        modal.showModal();
    });

    modal.addEventListener('click', e => {
        if (e.target === modal || e.target.closest('.sw-close')) modal.close();
    });

    update();
})();
</script>
