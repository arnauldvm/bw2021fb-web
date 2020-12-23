---
title: Unités scoutes
layout: default
---
{% include kramdown_definitions.md %}

<!-- cspell:disable-->
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
<!-- cspell:enable-->
{: card_white}

<div>

{% for _ in site.units_cards %}
<div>
<div>

##### {{ _.title }}
{: .card-title}

<div>
{{ _.content }}
</div>
{: .card-text}

</div>
{: card_blue}
</div>
{: column}
{% endfor %}

</div>
{: .row}
