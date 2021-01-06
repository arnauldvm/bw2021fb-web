---
title: Sponsors
---
{% for image in site.static_files %}{% if image.path contains 'assets/images/sponsors' %}![{{ image.path }}](.{{ image.path }}){: .col .col-sm-6 .col-md-4}{% endif %}{% endfor %}

<mark>Emplacement pour logo main sponsors sur tout le site
  et dans la page sponsor</mark>

<mark>Emplacement pour logo sponsor</mark>

<mark>Emplacement pour sympathisant (texte)</mark>
```
