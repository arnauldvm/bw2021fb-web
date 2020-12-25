## Multiple language support

### Files to edit

- all files under `fr/` (for French) or `nl/` (for Dutch)
- plus, files `/*.md` &rarr; edit "front matter" to define page title in each language  
  (TODO: move this informaiton in a title under `fr/` and `nl/`)

### Select at build time

Use following option:

- `--config _config.yml,_config.fr.yml` for French (default)
- `--config _config.yml,_config.nl.yml` for Dutch
