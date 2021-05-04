## History of changes

See [CHANGELOG](./CHANGELOG.md)

## Multiple language support

### Files to edit

- all files under `fr/` (for French) or `nl/` (for Dutch)
- plus, files `/*.md` &rarr; edit "front matter" to define page title in each language  
  (TODO: move this informaiton in a title under `fr/` and `nl/`)

### Select at build time

Use following option:

- `--config _config.yml,_config.fr.yml` for French (default)
- `--config _config.yml,_config.nl.yml` for Dutch

### Forms selection

> Add the `lang=<LCID>` parameter to the MS Form URL.

The `<LCID>` (MS Language Code IDentifier) is a Microsoft convention,
based on RFC-4646.

However, MS Forms only supports a subset of languages (see reference below).
And, depending on the context, the region id could be required or not.

See also:

- [Languages supported by Microsoft Forms](https://support.microsoft.com/en-us/office/languages-supported-by-microsoft-forms-c17498cb-cbf6-4178-ae83-bd24934398ac)
- [[MS-LCID]: Windows Language Code Identifier (LCID) Reference](https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-lcid/70feba9f-294e-491e-b6eb-56532684c37f)

However, by testing and peeking into the inners of the MS Forms web app,
we observed that the code "fr" is not supported, and should be replaced by "fr-FR".

Conclusion, in our context, the LCID should be either `fr-FR` or `nl`

## Content

- Source files from Sharepoint folder [Communication](https://seascouts.sharepoint.com/:f:/s/blauwewimpel2021fanionbleu/EoDLI-jymd5OrO7wMPCSqpwBUBjVH3HnlEkCJy7XxGUSBw?e=92no6G) > Web site
- Stored in [`_sources`](./_sources)
- Markdown conversion and images extraction by <https://products.aspose.app/words/conversion/word-to-md>

## French

Based on:

- [Communication > Web site > web-structure-et-contenu-fr[4597].docx](https://seascouts.sharepoint.com/:w:/s/blauwewimpel2021fanionbleu/EeaekWerTqBIpvWAXUqkKFsBZBmXYOd5K85xTP7XThGWPQ?e=B3kddg).

## Dutch

Based on:

- [Communication > Web site > Web_Inhoud_NL[4596].docx](https://seascouts.sharepoint.com/:w:/s/blauwewimpel2021fanionbleu/EYDi1JRRY8JCvhq6D6LTpaABNgSMsAmyWkh4BdQdSgILTw?e=6tSc6X).

With corrections from Lowie Joye:

- [Communication > Web site > Site BW2021FB.pdf](https://seascouts.sharepoint.com/:b:/s/blauwewimpel2021fanionbleu/EV7zOolOvJpOnORKbqfSCPQBN3TzxW-tH8nfJEnAYbiCXw?e=kREGNX).

And finalization decisions taken during [SGP meeting on 18-Jan-2021](_sources/meeting-20210118.txt).
