# frozen_string_literal: true

# Capa visual Gobierno de Chile para las páginas del portal (layout: portal).
#
# Después de renderizar cada página agrega, sin tocar el Markdown:
#   - un ícono a tarjetas (.cap, .route, .doc-card, componentes, proyectos,
#     recursos, filas numeradas y pasos), elegido por palabra clave del título;
#   - una ilustración al encabezado (.hero / .page-hero) de cada página;
#   - el estilo de banda de llamado a la acción (.cta-band) a los cierres.
#
# Las palabras clave, los íconos y el ícono fijo por página están en
# _data/icons.yml. Port de tools/rediseno.py (rediseño portal-interoperabilidad-v2).
module PortalGob
  module_function

  def norm(text)
    text.gsub(/<[^>]+>/, " ").downcase.unicode_normalize(:nfd).gsub(/\p{Mn}/, "")
  end

  def pick(data, text, default = "spark")
    t = norm(text)
    hit = data["keywords"].find { |kw, _| t.include?(kw) }
    hit ? hit[1] : default
  end

  def ico(name)
    %(<svg class="ico" aria-hidden="true" focusable="false"><use href="#i-#{name}"/></svg>)
  end

  def tile(name, extra = "")
    %(<span class="ico-tile#{extra}">#{ico(name)}</span>)
  end

  def page_art(icon)
    <<~HTML.chomp
      <div class="page-art" aria-hidden="true">
        <span class="page-art__ring"></span><span class="page-art__ring page-art__ring--2"></span>
        <span class="page-art__tile">#{ico(icon)}</span>
        <span class="page-art__dot page-art__dot--a"></span><span class="page-art__dot page-art__dot--b"></span>
      </div>
    HTML
  end

  def add_hero_art(html, rel, data)
    fixed = data["pages"][rel]
    # Encabezado .hero (la portada ya trae su ilustración: hero--art)
    html = html.sub(%r{<section class="hero">\s*<div class="wrap">(.*?)</div>\s*</section>}m) do
      inner = Regexp.last_match(1)
      head = inner.match(%r{hero__eyebrow">(.*?)</p>.*?<h[12][^>]*>(.*?)</h[12]>}m)
      key = head ? "#{head[1]} #{head[2]}" : inner[0, 200]
      %(<section class="hero hero--art">\n  <div class="wrap hero-split">) +
        %(<div class="hero-split__text">#{inner}</div>#{page_art(fixed || pick(data, key, 'network'))}</div>\n</section>)
    end
    html.sub(%r{<section class="page-hero">\s*<div class="wrap">(.*?)</div>\s*</section>}m) do
      inner = Regexp.last_match(1)
      h1 = inner.match(%r{<h1>(.*?)</h1>}m)
      icon = fixed || pick(data, "#{h1 ? h1[1] : ''} #{rel}", "file-text")
      %(<section class="page-hero hero--art">\n  <div class="wrap hero-split">) +
        %(<div class="hero-split__text">#{inner}</div>#{page_art(icon)}</div>\n</section>)
    end
  end

  def add_icons(html, data)
    html = html.gsub(%r{(<div class="cap">\s*)(<h3>.*?</h3>)}m) do
      "#{$1}#{tile(pick(data, $2))}#{$2}"
    end
    html = html.gsub(%r{(<a class="route"[^>]*>\s*)(<b>.*?</b>)}m) do
      "#{$1}#{tile(pick(data, $2), ' ico-tile--sm')}#{$2}"
    end
    html = html.gsub(%r{(<(?:div|a) class="doc-card"[^>]*>\s*)(<span class="doc-card__label">.*?</span>)(.{0,200})}m) do
      "#{$1}#{tile(pick(data, $2 + $3[0, 200]), ' ico-tile--sm')}#{$2}#{$3}"
    end
    html = html.gsub(%r{(<header class="(?:ccard|pcard)__head">\s*)(.*?)\s*</header>}m) do
      %(#{$1}#{tile(pick(data, $2))}<div class="card-head__text">#{$2}</div></header>)
    end
    html = html.gsub(%r{(<article class="res">\s*)(<h2>.*?</h2>)}m) do
      "#{$1}#{tile(pick(data, $2))}#{$2}"
    end
    html = html.gsub(%r{<div class="cap-row__mark">(\d+)</div>(\s*<div class="cap-row__body">\s*)(<h[23][^>]*>.*?</h[23]>)}m) do
      %(<div class="cap-row__mark">#{ico(pick(data, $3))}<span class="cap-row__n">#{$1}</span></div>#{$2}#{$3})
    end
    html.gsub(%r{<p class="step__n">(.*?)</p>}m) do
      %(<p class="step__n">#{tile(pick(data, $1), ' ico-tile--sm')}<span>#{$1}</span></p>)
    end
  end

  def mark_cta(html)
    html = html.gsub('class="band next-band"', 'class="band next-band cta-band"')
    html = html.gsub('class="band band--tint next-band"', 'class="band next-band cta-band"')
    html.gsub(%r{<section class="band">(\s*<div class="wrap">\s*<header class="sec-head">\s*<p class="kicker">¿Vas a implementar\?)}) do
      %(<section class="band cta-band">#{$1})
    end
  end

  def transform(doc)
    data = doc.site.data["icons"]
    dest = doc.site.dest
    rel = doc.destination(dest).delete_prefix("#{dest}/")
    html = add_hero_art(doc.output, rel, data)
    html = add_icons(html, data)
    mark_cta(html)
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_render do |doc|
  next unless doc.output_ext == ".html" && doc.output.include?('<body class="portal"')

  doc.output = PortalGob.transform(doc)
end
