---
title: A Roadmap of Questionable Research Practices in Ecological Modelling
running-head: Questionable Research Practices in Ecological Modelling
author:
  - name: Elliot Gould
    email: elliot.gould@unimelb.edu.au
    orcid: 0000-0002-6585-538X
    url: https://github.com/egouldo
    corresponding: true
    affiliation:
      - ref: 1
  - name: Second Author
    affiliation:
      - ref: 2
affiliations:
  - id: 1
    name: First University
    department: Department Name
  - id: 2
    name: Second University
abstract: |
  Your abstract goes here. This will appear prominently at the top of your document.
categories: [keyword1, keyword2, keyword3]
authornote: |
  Author contributions, funding, conflicts of interest, or other notes.
date: last-modified
bibliography: references.bib
format:
  preprint-typst:
    keep-md: true
    wordcount: true
    execute:
      echo: false
      message: false
      include-before-body:
      - text: |
          #show figure: set block(breakable: true)
    # Common options - uncomment (and remove 'default') to use
    # theme-jou: true              # Journal theme (2-column)
    # line-number: true            # Line numbering
    # fontsize: 11pt               # Font size
    # leading: 0.6em               # Line spacing
    # first-line-indent: 1.8em     # Paragraph indent
---


::: {.cell}

:::


# Introduction


::: {#tbl-QRP-examples .cell tbl-cap='Examples and self-reported frequency of questionable research practices in hypothesis-testing research. QRPs are categorised as "cherry-picking", "p-hacking", and "methodologically flawed", indicated by the cherry, saw, and cross icons respectively.'}
::: {.cell-output-display}

```{=html}
<div id="vzfmfasskr" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  
  <table class="gt_table" style="-webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; display: table; border-collapse: collapse; line-height: normal; margin-left: auto; margin-right: auto; color: #333333; font-size: 16px; font-weight: normal; font-style: normal; background-color: #FFFFFF; border-top-style: none; border-top-width: 2px; border-top-color: #A8A8A8; border-right-style: none; border-right-width: 2px; border-right-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #A8A8A8; border-left-style: none; border-left-width: 2px; border-left-color: #D3D3D3; table-layout: fixed; width: 0px;" data-quarto-disable-processing="false" data-quarto-bootstrap="false" width="0" bgcolor="#FFFFFF">
  <colgroup>
    <col style="width:50px;">
    <col style="width:75px;">
    <col style="width:75px;">
    <col style="width:150px;">
  </colgroup>
  <thead style="border-style: none;">
    <tr class="gt_col_headings" style="border-style: none; border-top-style: none; border-top-width: 2px; border-top-color: #D3D3D3; border-bottom-style: none; border-bottom-width: 1px; border-bottom-color: #334422; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3;">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="a::stub" style="border-style: none; color: #333333; background-color: #FFFFFF; font-size: 12px; font-weight: normal; text-transform: inherit; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left;" bgcolor="#FFFFFF" valign="bottom" align="left"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="border-style: none; background-color: #FFFFFF; font-size: 12px; font-weight: normal; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left; color: #A9A9A9; font-family: 'Source Sans Pro'; text-transform: uppercase;" scope="col" id="Questionable-Research-Practice" bgcolor="#FFFFFF" valign="bottom" align="left">Questionable Research Practice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="border-style: none; background-color: #FFFFFF; font-size: 12px; font-weight: normal; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left; color: #A9A9A9; font-family: 'Source Sans Pro'; text-transform: uppercase;" scope="col" id="Abbreviation" bgcolor="#FFFFFF" valign="bottom" align="left">Abbreviation<span class="gt_footnote_marks" style="font-size: 75%; vertical-align: 0.4em; position: initial; white-space: nowrap; font-style: italic; font-weight: normal; line-height: 0;"><sup>1</sup></span></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="border-style: none; background-color: #FFFFFF; font-size: 12px; font-weight: normal; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 5px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left; color: #A9A9A9; font-family: 'Source Sans Pro'; text-transform: uppercase;" scope="col" id="Ecology" bgcolor="#FFFFFF" valign="bottom" align="left">Ecology<span class="gt_footnote_marks" style="font-size: 75%; vertical-align: 0.4em; position: initial; white-space: nowrap; font-style: italic; font-weight: normal; line-height: 0;"><sup>2</sup></span></th>
    </tr>
  </thead>
  <tbody class="gt_table_body" style="border-style: none; border-top-style: none; border-top-width: 2px; border-top-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #FFFFFF;">
    <tr class="gt_row_group_first" style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png stub_1_1 stub_1" rowspan="4" class="gt_row gt_left gt_stub_row_group" style="border-style: none; padding-top: 7px; padding-bottom: 7px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; overflow-x: hidden; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: initial; text-transform: inherit; border-right-style: solid; border-right-width: 2px; border-right-color: #D3D3D3; padding-left: 5px; padding-right: 5px; vertical-align: top; text-align: left; border-top-width: 2px;" bgcolor="#FFFFFF" valign="top" align="left"><img src="data:image/png;base64,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" style="height:5px;"></td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png stub_1_1 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Not reporting response (outcome) variable that failed to reach statistical significance.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png stub_1_1 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Omitting non-significant studies or variables.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png stub_1_1 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:64%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">64%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_2 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Not reporting covariates that failed to reach statistical significance (e.g. p &lt;= 0.05) or some other desired statistical threshold.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_2 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Omitting non-significant covariates.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_2 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:45%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">45%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_3 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Reporting an unexpected finding as having been predicted from the start.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_3 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">HARKing.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_3 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:49%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">49%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_4 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Reporting a set of results as the complete set of analyses when other analyses were also conducted.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_4 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Omitting analyses.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Cherry-picking.png Questionable Research Practice_4 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:53%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">53%</span></div></div></td></tr>
    <tr class="gt_row_group_first" style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png stub_1_5 stub_1" rowspan="4" class="gt_row gt_left gt_stub_row_group" style="border-style: none; padding-top: 7px; padding-bottom: 7px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; overflow-x: hidden; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: initial; text-transform: inherit; border-right-style: solid; border-right-width: 2px; border-right-color: #D3D3D3; padding-left: 5px; padding-right: 5px; vertical-align: top; text-align: left; border-top-width: 2px;" bgcolor="#FFFFFF" valign="top" align="left"><img src="data:image/png;base64,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" style="height:5px;"></td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png stub_1_5 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Rounding off a p-value or other quantity to meet a pre-specified threshold.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png stub_1_5 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Rounding p-values.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png stub_1_5 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:27%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">27%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_6 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Deciding to exclude data points after first checking the impact on statistical significance.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_6 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Data Exclusion (ARKing).</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_6 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:24%;height:16px;display:flex;align-items:center;justify-content:center;color:#000000;font-weight:bold;font-size:30;position:relative;"><span style="color:#000000;position:absolute;left:0%;margin-left:36px;font-weight:bold;font-size:30;">24%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_7 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Collecting more data after inspecting whether the results are statistically significant.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_7 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Data peeking.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_7 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:37%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">37%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_8 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Changing to another type of statistical analysis after the analysis initially chosen failed to reach statistical significance (e.g. p&lt;= 0.05) or some other desired statistical threshold.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_8 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Analysis gaming.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/P-hacking.png Questionable Research Practice_8 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:54%;height:16px;display:flex;align-items:center;justify-content:flex-start;position:relative;"><span style="color:#FFFFFF;position:absolute;left:0px;margin-left:5px;font-weight:bold;font-size:30;">54%</span></div></div></td></tr>
    <tr class="gt_row_group_first" style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png stub_1_9 stub_1" rowspan="2" class="gt_row gt_left gt_stub_row_group" style="border-style: none; padding-top: 7px; padding-bottom: 7px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; overflow-x: hidden; color: #333333; background-color: #FFFFFF; font-size: 100%; font-weight: initial; text-transform: inherit; border-right-style: solid; border-right-width: 2px; border-right-color: #D3D3D3; padding-left: 5px; padding-right: 5px; vertical-align: top; text-align: left; border-top-width: 2px;" bgcolor="#FFFFFF" valign="top" align="left"><img src="data:image/png;base64,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" style="height:5px;"></td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png stub_1_9 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Not disclosing known problems in the method, analysis or data quality that potentially impact conclusions.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png stub_1_9 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Hiding methodological problems.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png stub_1_9 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; border-top-width: 2px; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:20%;height:16px;display:flex;align-items:center;justify-content:center;color:#000000;font-weight:bold;font-size:30;position:relative;"><span style="color:#000000;position:absolute;left:0%;margin-left:30px;font-weight:bold;font-size:30;">20%</span></div></div></td></tr>
    <tr style="border-style: none;"><td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png Questionable Research Practice_10 Questionable Research Practice" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Filling in missing data points without identifying those data as simulated.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png Questionable Research Practice_10 Abbreviation" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left">Filling in missing data.</td>
<td headers="/Users/elliotgould/Documents/GitHub/EcoConsQRPs/data/icons/Poor-practice.png Questionable Research Practice_10 Ecology" class="gt_row gt_left" style="border-style: none; padding-top: 7px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: #D3D3D3; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left; font-family: 'Source Sans Pro'; font-weight: 400;" valign="middle" align="left"><div style="flex-grow:1;margin-left:8px;background:grey;"><div style="background:purple;width:5%;height:16px;display:flex;align-items:center;justify-content:center;color:#000000;font-weight:bold;font-size:30;position:relative;"><span style="color:#000000;position:absolute;left:0%;margin-left:7.5px;font-weight:bold;font-size:30;">5%</span></div></div></td></tr>
  </tbody>
  
  <tfoot class="gt_footnotes" style="border-style: none; color: #333333; background-color: #FFFFFF; border-bottom-style: none; border-bottom-width: 2px; border-bottom-color: #D3D3D3; border-left-style: none; border-left-width: 2px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 2px; border-right-color: #D3D3D3;" bgcolor="#FFFFFF">
    <tr style="border-style: none;">
      <td class="gt_footnote" colspan="4" style="border-style: none; margin: 0px; font-size: 90%; padding-top: 4px; padding-bottom: 4px; padding-left: 5px; padding-right: 5px;"><span class="gt_footnote_marks" style="font-size: 75%; vertical-align: 0.4em; position: initial; white-space: nowrap; font-style: italic; font-weight: normal; line-height: 0;"><sup>1</sup></span> Makel et al. (2019)</td>
    </tr>
    <tr style="border-style: none;">
      <td class="gt_footnote" colspan="4" style="border-style: none; margin: 0px; font-size: 90%; padding-top: 4px; padding-bottom: 4px; padding-left: 5px; padding-right: 5px;"><span class="gt_footnote_marks" style="font-size: 75%; vertical-align: 0.4em; position: initial; white-space: nowrap; font-style: italic; font-weight: normal; line-height: 0;"><sup>2</sup></span> <span data-qmd-base64="RnJhc2VyIGV0IGFsLiAoMjAxOCksIFwobj00OTRcKQ=="><span class="gt_from_md">Fraser et al. (2018), \(n=494\)</span></span></td>
    </tr>
  </tfoot>
</table>
</div>
```

:::
:::


# Methods

# Results

## QRP Roadmaps


::: {.cell}

:::



::: {.cell}
::: {.cell-output-display}
![Summary of Questionable Research Practices (QRPs) in ecological modelling. QRPs may target model inputs (yellow squares), the model itself (red squares), and/or model outputs (green squares), and may occur at different phases in the modelling cycle. QRPs are grouped according to broader classes defined in @tbl-QRP-categories. See @tbl-QRP for the full list of QRPs we identified.](ms-preprint_files/figure-typst/fig-waffle_plot-1.svg){#fig-waffle_plot}
:::
:::



::: {#tbl-QRP-categories .cell tbl-cap='Classes of Questionable Research Practices (QRPs) in ecological modelling.'}

```{=html}
<div id="ikvlmeiuct" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  
  <table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false" style="-webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; font-family: Roboto, system-ui, 'Segoe UI', Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; display: table; border-collapse: collapse; line-height: normal; margin-left: auto; margin-right: auto; color: #333333; font-size: 12px; font-weight: normal; font-style: normal; background-color: #FFFFFF; width: auto; border-top-style: solid; border-top-width: 3px; border-top-color: rgba(255, 255, 255, 0); border-right-style: none; border-right-width: 2px; border-right-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #D3D3D3; border-left-style: none; border-left-width: 2px; border-left-color: #D3D3D3;" bgcolor="#FFFFFF">
  <thead style="border-style: none;">
    <tr class="gt_col_headings" style="border-style: none; border-top-style: solid; border-top-width: 3px; border-top-color: rgba(255, 255, 255, 0); border-bottom-style: solid; border-bottom-width: 3px; border-bottom-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3;">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="border-style: none; text-transform: uppercase; border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: bottom; padding-top: 6px; padding-bottom: 7px; padding-left: 5px; padding-right: 5px; overflow-x: hidden; text-align: left; background-color: #585D63; color: #FFFFFF; font-size: 10px; font-weight: bold; border-bottom-width: 2.5px; border-bottom-style: solid; border-bottom-color: #585d63;" scope="col" id="qrp_coded" bgcolor="#585D63" valign="bottom" align="left">QRP Class</th>
    </tr>
  </thead>
  <tbody class="gt_table_body" style="border-style: none; border-top-style: solid; border-top-width: 2px; border-top-color: #D3D3D3; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #D3D3D3;">
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Executing Alternative Analyses</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left gt_striped" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; background-color: #F5F5F5; text-align: left;" valign="middle" bgcolor="#F5F5F5" align="left">Model Dredging</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Overfitting</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left gt_striped" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; background-color: #F5F5F5; text-align: left;" valign="middle" bgcolor="#F5F5F5" align="left">Overhyping</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">S-hacking</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left gt_striped" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; background-color: #F5F5F5; text-align: left;" valign="middle" bgcolor="#F5F5F5" align="left">Sample Curation</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; text-align: left;" valign="middle" align="left">Selective Debugging</td></tr>
    <tr style="border-style: none;"><td headers="qrp_coded" class="gt_row gt_left gt_striped" style="border-style: none; padding-top: 6px; padding-bottom: 6px; padding-left: 5px; padding-right: 5px; margin: 10px; border-top-style: solid; border-top-width: 1px; border-top-color: rgba(255, 255, 255, 0); border-left-style: none; border-left-width: 1px; border-left-color: #D3D3D3; border-right-style: none; border-right-width: 1px; border-right-color: #D3D3D3; vertical-align: middle; overflow-x: hidden; background-color: #F5F5F5; text-align: left;" valign="middle" bgcolor="#F5F5F5" align="left">Selective Reporting</td></tr>
  </tbody>
  
  
</table>
</div>
```
:::


::: {.landscape}

`#show figure: set block(breakable: true)`{=typst}



::: {#tbl-QRP .cell .column-body-outset tbl-cap='Full list of Questionable Research Practices identified from the literature. We categorised QRPs into broader classes'}
::: {.cell-output-display}

```{=html}
<div id="uatxowlspa" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>@import url("https://fonts.googleapis.com/css2?family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
#uatxowlspa table {
  font-family: 'Fira Sans', system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#uatxowlspa thead, #uatxowlspa tbody, #uatxowlspa tfoot, #uatxowlspa tr, #uatxowlspa td, #uatxowlspa th {
  border-style: none;
}

#uatxowlspa p {
  margin: 0;
  padding: 0;
}

#uatxowlspa .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 12px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 3px;
  border-top-color: rgba(255, 255, 255, 0);
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 1px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#uatxowlspa .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#uatxowlspa .gt_title {
  color: #333333;
  font-size: 30px;
  font-weight: bold;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#uatxowlspa .gt_subtitle {
  color: #333333;
  font-size: 16px;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#uatxowlspa .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uatxowlspa .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uatxowlspa .gt_col_headings {
  border-top-style: solid;
  border-top-width: 3px;
  border-top-color: rgba(255, 255, 255, 0);
  border-bottom-style: solid;
  border-bottom-width: 3px;
  border-bottom-color: rgba(255, 255, 255, 0);
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#uatxowlspa .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 6px;
  padding-bottom: 7px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#uatxowlspa .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#uatxowlspa .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#uatxowlspa .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#uatxowlspa .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 3px;
  border-bottom-color: rgba(255, 255, 255, 0);
  vertical-align: bottom;
  padding-top: 6px;
  padding-bottom: 6px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#uatxowlspa .gt_spanner_row {
  border-bottom-style: hidden;
}

#uatxowlspa .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}

#uatxowlspa .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#uatxowlspa .gt_from_md > :first-child {
  margin-top: 0;
}

#uatxowlspa .gt_from_md > :last-child {
  margin-bottom: 0;
}

#uatxowlspa .gt_row {
  padding-top: 6px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: rgba(255, 255, 255, 0);
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#uatxowlspa .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#uatxowlspa .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#uatxowlspa .gt_row_group_first td {
  border-top-width: 2px;
}

#uatxowlspa .gt_row_group_first th {
  border-top-width: 2px;
}

#uatxowlspa .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uatxowlspa .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#uatxowlspa .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#uatxowlspa .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uatxowlspa .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#uatxowlspa .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#uatxowlspa .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}

#uatxowlspa .gt_striped {
  background-color: #F5F5F5;
}

#uatxowlspa .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#uatxowlspa .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uatxowlspa .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#uatxowlspa .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#uatxowlspa .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#uatxowlspa .gt_left {
  text-align: left;
}

#uatxowlspa .gt_center {
  text-align: center;
}

#uatxowlspa .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#uatxowlspa .gt_font_normal {
  font-weight: normal;
}

#uatxowlspa .gt_font_bold {
  font-weight: bold;
}

#uatxowlspa .gt_font_italic {
  font-style: italic;
}

#uatxowlspa .gt_super {
  font-size: 65%;
}

#uatxowlspa .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}

#uatxowlspa .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#uatxowlspa .gt_indent_1 {
  text-indent: 5px;
}

#uatxowlspa .gt_indent_2 {
  text-indent: 10px;
}

#uatxowlspa .gt_indent_3 {
  text-indent: 15px;
}

#uatxowlspa .gt_indent_4 {
  text-indent: 20px;
}

#uatxowlspa .gt_indent_5 {
  text-indent: 25px;
}

#uatxowlspa .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}

#uatxowlspa div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #585D63; color: #FFFFFF; font-size: 10px; font-weight: bold; border-bottom-width: 2.5px; border-bottom-style: solid; border-bottom-color: #585d63;" scope="col" id="qrp_coded">Practice</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #585D63; color: #FFFFFF; font-size: 10px; font-weight: bold; border-bottom-width: 2.5px; border-bottom-style: solid; border-bottom-color: #585d63;" scope="col" id="source">Source</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" style="background-color: #585D63; color: #FFFFFF; font-size: 10px; font-weight: bold; border-bottom-width: 2.5px; border-bottom-style: solid; border-bottom-color: #585d63;" scope="col" id="target">Target</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Executing Alternative Analyses">Executing Alternative Analyses</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Executing Alternative Analyses  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="U2VsZWN0aW5nIGFuZCB1c2luZyBwZXJmb3JtYW5jZSBtZXRyaWNzIG5vdCByZWxhdGVkIHRvIG1vZGVsIG9iamVjdGl2ZXMsIGJ1dCBiYXNlZCBvbiBoaWdoIOKAmHBlcmZvcm1hbmNl4oCZIGFmdGVyIG9ic2VydmluZyBtb2RlbCByZXN1bHRzLg=="><span class='gt_from_md'>Selecting and using performance metrics not related to model objectives, but based on high ‘performance’ after observing model results.</span></span></td>
<td headers="Executing Alternative Analyses  source" class="gt_row gt_left"><span data-qmd-base64="W0BIaWxkZWJyYW5kdDIwMThd"><span class='gt_from_md'>[@Hildebrandt2018]</span></span></td>
<td headers="Executing Alternative Analyses  target" class="gt_row gt_left">output</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Model Dredging">Model Dredging</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Model Dredging  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RHJlZGdpbmcgZm9yIG1vZGVscyBpbiB1bmNvbnN0cmFpbmVkIG1vZGVsIHNwYWNlLCB3aGVyZSBtb2RlbCBzcGFjZSBpcyBub3QgaW5mb3JtZWQgYnkgdGhlb3J5IG9yIGNvbnNpc3RzIG9mIG1vZGVscyB0aGF0IGFyZSBiaW9sb2dpY2FsbHkgaW1wbGF1c2libGUu"><span class='gt_from_md'>Dredging for models in unconstrained model space, where model space is not informed by theory or consists of models that are biologically implausible.</span></span></td>
<td headers="Model Dredging  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BTaG11ZWxpOjIwMTBlY10="><span class='gt_from_md'>[@Shmueli2010]</span></span></td>
<td headers="Model Dredging  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Model Dredging  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RHJlZGdpbmcgZm9yIG1vZGVscyBpbiB1bmNvbnN0cmFpbmVkIG1vZGVsIHNwYWNlLCB3aGVyZSBtb2RlbCBzcGFjZSBpcyBub3QgaW5mb3JtZWQgYnkgdGhlb3J5IG9yIGNvbnNpc3RzIG9mIG1vZGVscyB0aGF0IGFyZSBiaW9sb2dpY2FsbHkgaW1wbGF1c2libGUu"><span class='gt_from_md'>Dredging for models in unconstrained model space, where model space is not informed by theory or consists of models that are biologically implausible.</span></span></td>
<td headers="Model Dredging  source" class="gt_row gt_left"><span data-qmd-base64="W0BNYWNOYWxseTIwMDBd"><span class='gt_from_md'>[@MacNally2000]</span></span></td>
<td headers="Model Dredging  target" class="gt_row gt_left">model</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Overfitting">Overfitting</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Overfitting  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="T3ZlcmZpdHRpbmcgYSBtb2RlbCB0byBjYWxpYnJhdGlvbiBkYXRhc2V0IGJ5IGluY2x1ZGluZyB0b28gbWFueSBtb2RlcmF0b3JzIG9yIHByZWRpY3RvcnMgcmVsYXRpdmUgdG8gdGhlIHNpemUgYW5kIGNvbXBsZXhpdHkgb2YgdGhlIGRhdGFzZXQu"><span class='gt_from_md'>Overfitting a model to calibration dataset by including too many moderators or predictors relative to the size and complexity of the dataset.</span></span></td>
<td headers="Overfitting  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BOYWthZ2F3YTIwMTdd"><span class='gt_from_md'>[@Nakagawa2017]</span></span></td>
<td headers="Overfitting  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Overfitting  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="T3ZlcmZpdHRpbmcgYSBtb2RlbCB0byBjYWxpYnJhdGlvbiBkYXRhc2V0IGJ5IGluY2x1ZGluZyB0b28gbWFueSBtb2RlcmF0b3JzIG9yIHByZWRpY3RvcnMgcmVsYXRpdmUgdG8gdGhlIHNpemUgYW5kIGNvbXBsZXhpdHkgb2YgdGhlIGRhdGFzZXQu"><span class='gt_from_md'>Overfitting a model to calibration dataset by including too many moderators or predictors relative to the size and complexity of the dataset.</span></span></td>
<td headers="Overfitting  source" class="gt_row gt_left"><span data-qmd-base64="W0BsZXdpczIwMjNd"><span class='gt_from_md'>[@lewis2023]</span></span></td>
<td headers="Overfitting  target" class="gt_row gt_left">model</td></tr>
    <tr><td headers="Overfitting  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="T3ZlcmZpdHRpbmcgYSBtb2RlbCB0byBjYWxpYnJhdGlvbiBkYXRhc2V0IGJ5IGluY2x1ZGluZyB0b28gbWFueSBtb2RlcmF0b3JzIG9yIHByZWRpY3RvcnMgcmVsYXRpdmUgdG8gdGhlIHNpemUgYW5kIGNvbXBsZXhpdHkgb2YgdGhlIGRhdGFzZXQu"><span class='gt_from_md'>Overfitting a model to calibration dataset by including too many moderators or predictors relative to the size and complexity of the dataset.</span></span></td>
<td headers="Overfitting  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BNY0Rlcm1vdHQyMDIxXQ=="><span class='gt_from_md'>[@McDermott2021]</span></span></td>
<td headers="Overfitting  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Overfitting  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="T3ZlcmZpdHRpbmcgbW9kZWwgdG8gY2FsaWJyYXRpb24gZGF0YSBieSBhZGRpbmcgYWRkaXRpb25hbCBwYXJhbWV0ZXJzIGFmdGVyIG9ic2VydmluZyBmaXR0ZWQgbW9kZWwu"><span class='gt_from_md'>Overfitting model to calibration data by adding additional parameters after observing fitted model.</span></span></td>
<td headers="Overfitting  source" class="gt_row gt_left"><span data-qmd-base64="W0BsZXdpczIwMjNd"><span class='gt_from_md'>[@lewis2023]</span></span></td>
<td headers="Overfitting  target" class="gt_row gt_left">model</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Overhyping">Overhyping</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Overhyping  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Rm9yIHN0dWRpZXMgZGV2ZWxvcGluZyBuZXcgbWV0aG9kcyBvciBhcHByb2FjaGVzLCBvcHRpbWlzaW5nIG1ldGhvZCAvIGFwcHJvYWNoIHRvIGltcHJvdmUgdGhlIHBlcmZvcm1hbmNlIGFnYWluc3QgYmFzZWxpbmUgbWV0aG9kcy4="><span class='gt_from_md'>For studies developing new methods or approaches, optimising method / approach to improve the performance against baseline methods.</span></span></td>
<td headers="Overhyping  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BNY0Rlcm1vdHQyMDIxXQ=="><span class='gt_from_md'>[@McDermott2021]</span></span></td>
<td headers="Overhyping  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Overhyping  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q2xhaW1pbmcgdGhlIG1vZGVsIGhhcyBncmVhdGVyIGdlbmVyYWxpemFiaWxpdHkgLyByZXBsaWNhYmlsaXR5IHRoYW4gaXQgZG9lcy4="><span class='gt_from_md'>Claiming the model has greater generalizability / replicability than it does.</span></span></td>
<td headers="Overhyping  source" class="gt_row gt_left"><span data-qmd-base64="W0BNY0Rlcm1vdHQyMDIxXQ=="><span class='gt_from_md'>[@McDermott2021]</span></span></td>
<td headers="Overhyping  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="Overhyping  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Q29ycmVsYXRpdmUgY2xhaW1zIGFyZSBtaXNyZXBvcnRlZCB1c2luZyBjYXVzYWwgbGFuZ3VhZ2Uu"><span class='gt_from_md'>Correlative claims are misreported using causal language.</span></span></td>
<td headers="Overhyping  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BKb3NlZnNzb24yMDIwXQ=="><span class='gt_from_md'>[@Josefsson2020]</span></span></td>
<td headers="Overhyping  target" class="gt_row gt_left gt_striped">output</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Poor Practice">Poor Practice</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Poor Practice  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="SW1wcm9wZXIgdXNlIG9mIG1vZGVsIGV2YWx1YXRpb24gbWV0cmljcyAoZS5nLiB1c2luZyBhbiBldmFsdWF0aW9uIG1ldHJpYyBpbGwtc3VpdGVkIHRvIHRoZSBzdGF0ZWQgbW9kZWwgcHVycG9zZSku"><span class='gt_from_md'>Improper use of model evaluation metrics (e.g. using an evaluation metric ill-suited to the stated model purpose).</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left"><span data-qmd-base64="W0BGb3VyY2FkZTIwMThd"><span class='gt_from_md'>[@Fourcade2018]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="Poor Practice  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="VXNpbmcgaW5mb3JtYXRpb24tdGhlb3JldGljIGFwcHJvYWNoZXMgdG8gcGVyZm9ybSBpbi1zYW1wbGUgbW9kZWwgYXNzZXNzbWVudC4="><span class='gt_from_md'>Using information-theoretic approaches to perform in-sample model assessment.</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BCb2RuZXIyMDIwXQ=="><span class='gt_from_md'>[@Bodner2020]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left gt_striped">output, model</td></tr>
    <tr><td headers="Poor Practice  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RmFpbHVyZSB0byB1c2UgYmlvbG9naWNhbGx5IGluZm9ybWVkIC8ganVzdGlmaWVkIHByZWRpY3RvciB2YXJpYWJsZXMu"><span class='gt_from_md'>Failure to use biologically informed / justified predictor variables.</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left"><span data-qmd-base64="W0BGb3VyY2FkZTIwMThd"><span class='gt_from_md'>[@Fourcade2018]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left">model, input</td></tr>
    <tr><td headers="Poor Practice  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="b3Zlci1zaW1wbGlmeWluZyBtb2RlbHMgZHVlIHRvIGlkZW9sb2dpY2FsIHN0YW5jZSByYXRoZXIgdGhhbiBiYXNlZCBvbiBtb2RlbGxpbmcgb2JqZWN0aXZlcyBvciBwZXJmb3JtYW5jZSBtZWFzdXJlcyBsaW5rZWQgdG8gdGhvc2Ugb2JqZWN0aXZlcy4="><span class='gt_from_md'>over-simplifying models due to ideological stance rather than based on modelling objectives or performance measures linked to those objectives.</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BCYWJlbDIwMTld"><span class='gt_from_md'>[@Babel2019]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Poor Practice  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="T3ZlcnVzZSBvZiBpbmZlcmlvciwgZmFtaWxpYXIgbWV0aG9kcyAvIGZhaWxpbmcgdG8gYWRvcHQgbmV3LCBzdXBlcmlvciBvciBiZXN0LXByYWN0aWNlIG1ldGhvZHMu"><span class='gt_from_md'>Overuse of inferior, familiar methods / failing to adopt new, superior or best-practice methods.</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left"><span data-qmd-base64="W0BIYXJkZXIyMDIwXQ=="><span class='gt_from_md'>[@Harder2020]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left">model, output, input</td></tr>
    <tr><td headers="Poor Practice  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Q29uc3RydWN0aW5nIG5ldyBtb2RlbCAvIHVzaW5nIG5ldyBtb2RlbGxpbmcgYXBwcm9hY2ggcmF0aGVyIHRoYW4gYXBwbHlpbmcgcHJlLWV4aXN0aW5nIG9uZSB0aGF0IG1pZ2h0IGJlIHN1cGVyaW9yLg=="><span class='gt_from_md'>Constructing new model / using new modelling approach rather than applying pre-existing one that might be superior.</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BCYWJlbDIwMTld"><span class='gt_from_md'>[@Babel2019]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Poor Practice  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="UmVzdWJzdGl0dXRpb246IGFzc2Vzc2luZyBtb2RlbCBwZXJmb3JtYW5jZSBvbiB0cmFpbmluZyBzZXQgb25seSBvciBmYWlsaW5nIHRvIGV2YWx1YXRlIG1vZGVsIG9uIGluZGVwZW5kZW50IGRhdGEsIG9yIG9uIHBhcnRpdGlvbmVkIGhvbGRvdXQgZGF0YS4="><span class='gt_from_md'>Resubstitution: assessing model performance on training set only or failing to evaluate model on independent data, or on partitioned holdout data.</span></span></td>
<td headers="Poor Practice  source" class="gt_row gt_left"><span data-qmd-base64="W0BCb2RuZXIyMDIwXQ=="><span class='gt_from_md'>[@Bodner2020]</span></span></td>
<td headers="Poor Practice  target" class="gt_row gt_left">intput, output</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Poor Practice: pre-QRP">Poor Practice: pre-QRP</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Poor Practice: pre-QRP  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RmFpbGluZyB0byBkZWZpbmUgbW9kZWwgcHJlZGljdGlvbiBwcm9wZXJ0aWVzLg=="><span class='gt_from_md'>Failing to define model prediction properties.</span></span></td>
<td headers="Poor Practice: pre-QRP  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BCb2RuZXIyMDIwXQ=="><span class='gt_from_md'>[@Bodner2020]</span></span></td>
<td headers="Poor Practice: pre-QRP  target" class="gt_row gt_left gt_striped">output</td></tr>
    <tr><td headers="Poor Practice: pre-QRP  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RmFpbHVyZSB0byBlc3RhYmxpc2ggcmVsYXRpdmUgd2VpZ2h0aW5nIG9mIHBlcmZvcm1hbmNlIG1lYXN1cmVzIHByaW9yIHRvIGJlZ2lubmluZyBtb2RlbGxpbmcu"><span class='gt_from_md'>Failure to establish relative weighting of performance measures prior to beginning modelling.</span></span></td>
<td headers="Poor Practice: pre-QRP  source" class="gt_row gt_left"><span data-qmd-base64="W0BCZW5uZXR0MjAxM10="><span class='gt_from_md'>[@Bennett2013]</span></span></td>
<td headers="Poor Practice: pre-QRP  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="Poor Practice: pre-QRP  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RmFpbHVyZSB0byB1c2UgdGhlb3J5IGluIGd1aWRpbmcgbW9kZWwgc3BlY2lmaWNhdGlvbiAvIHVzaW5nIGRlZmF1bHQgY29udHJvbHMgaW4gcmVncmVzc2lvbiBtb2RlbCB0aGF0IGFyZSB1bmluZm9ybWVkIGJ5IHRoZW9yeS4="><span class='gt_from_md'>Failure to use theory in guiding model specification / using default controls in regression model that are uninformed by theory.</span></span></td>
<td headers="Poor Practice: pre-QRP  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BBdXNwdXJnMjAyMV0="><span class='gt_from_md'>[@Auspurg2021]</span></span></td>
<td headers="Poor Practice: pre-QRP  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="Poor Practice: pre-QRP  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RmFpbGluZyB0byBkZWZpbmUgb3IgaW5hZGVxdWF0ZWx5IGRlZmluaW5nIG1vZGVsIHB1cnBvc2UsIGZyYW1pbmcgYW5kIG9yIHNjb3BlLg=="><span class='gt_from_md'>Failing to define or inadequately defining model purpose, framing and or scope.</span></span></td>
<td headers="Poor Practice: pre-QRP  source" class="gt_row gt_left"><span data-qmd-base64="W0BCb2RuZXIyMDIwXV0="><span class='gt_from_md'>[@Bodner2020]]</span></span></td>
<td headers="Poor Practice: pre-QRP  target" class="gt_row gt_left">model, output, input</td></tr>
    <tr><td headers="Poor Practice: pre-QRP  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RmFpbHVyZSB0byBjbGVhcmx5IGRlZmluZSByZXNlYXJjaCBxdWVzdGlvbiBvciBnaXZlIHByZWNpc2UgZGVmaW5pdGlvbiBvZiBwYXJhbWV0ZXIgb2YgaW50ZXJlc3Qu"><span class='gt_from_md'>Failure to clearly define research question or give precise definition of parameter of interest.</span></span></td>
<td headers="Poor Practice: pre-QRP  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BCb2RuZXIyMDIwXQ=="><span class='gt_from_md'>[@Bodner2020]</span></span></td>
<td headers="Poor Practice: pre-QRP  target" class="gt_row gt_left gt_striped">model, output</td></tr>
    <tr><td headers="Poor Practice: pre-QRP  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RmFpbHVyZSB0byBleHBsaWNpdGx5IHN0YXRlIHRoZSBtb2RlbCBwdXJwb3NlLCBhbmQgLyBvciBmYWlsdXJlIHRvIGVzdGFibGlzaCBhIHByaW9yaSBwZXJmb3JtYW5jZSBtZXRyaWNzIGFuZCBtZWFzdXJlcyBhZnRlciBlc3RhYmxpc2hpbmcgdGhlIG1vZGVsIHB1cnBvc2UgYmVmb3JlIGJlZ2lubmluZyBtb2RlbGxpbmcu"><span class='gt_from_md'>Failure to explicitly state the model purpose, and / or failure to establish a priori performance metrics and measures after establishing the model purpose before beginning modelling.</span></span></td>
<td headers="Poor Practice: pre-QRP  source" class="gt_row gt_left"><span data-qmd-base64="W0BCb2RuZXIyMDIwXQ=="><span class='gt_from_md'>[@Bodner2020]</span></span></td>
<td headers="Poor Practice: pre-QRP  target" class="gt_row gt_left">output, model</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="S-hacking">S-hacking</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Q2hhbmdpbmcgdGhlIHJlbGF0aXZlIHdlaWdodGluZyBvciBzZWxlY3RpdmUgcmVwb3J0aW5nIGFmdGVyIG9ic2VydmluZyBtb2RlbCByZXN1bHRzLCB3aGVuIHRoZXJlIGFyZSBtdWx0aXBsZSBtb2RlbCBldmFsdWF0aW9uIGFuYWx5c2VzLg=="><span class='gt_from_md'>Changing the relative weighting or selective reporting after observing model results, when there are multiple model evaluation analyses.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BCZW5uZXR0MjAxM10="><span class='gt_from_md'>[@Bennett2013]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q2hhbmdpbmcgcGVyZm9ybWFuY2UgbWV0cmljcyB0byBpbmNyZWFzZSBwZXJjZXB0aW9uIG9mIHBlcmZvcm1hbmNlIGFmdGVyIGZpdHRpbmcgbW9kZWwgYW5kIG9ic2VydmluZyBtb2RlbCBldmFsdWF0aW9uIC8gbW9kZWwgY2hlY2tpbmcgcmVzdWx0cy4="><span class='gt_from_md'>Changing performance metrics to increase perception of performance after fitting model and observing model evaluation / model checking results.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="QmF5ZXMgRmFjdG9yIGhhY2tpbmc6IG9wdGltaXNpbmcgdGhlIG1vZGVsIHRvIG9idGFpbiBhIEJheWVzIEZhY3RvciBhYm92ZSB0aGUgcmVxdWlyZWQgdGhyZXNob2xkLg=="><span class='gt_from_md'>Bayes Factor hacking: optimising the model to obtain a Bayes Factor above the required threshold.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BLb25pam4yMDE1XQ=="><span class='gt_from_md'>[@Konijn2015]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">output, model</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q2hhbmdpbmcgZXZhbHVhdGlvbiBtZXRyaWMgdGhyZXNob2xkIGFmdGVyIG9ic2VydmluZyBvdXRjb21lLg=="><span class='gt_from_md'>Changing evaluation metric threshold after observing outcome.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left"><span data-qmd-base64="W0BmZW5nMjAxOV0="><span class='gt_from_md'>[@feng2019]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RGlzY3JldGl6aW5nIGNvbnRpbnVvdXMgdmFyaWFibGVzIGFmdGVyIG9ic2VydmluZyBtb2RlbCBjaGVja2luZyAvIG1vZGVsIHBlcmZvcm1hbmNlIHJlc3VsdHMu"><span class='gt_from_md'>Discretizing continuous variables after observing model checking / model performance results.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">input</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q29sbGVjdGluZyBuZXcgZGF0YSBhbmQgcmVmaXR0aW5nIG1vZGVsIGFmdGVyIG9ic2VydmluZyBtb2RlbCBldmFsdWF0aW9uIC8gbW9kZWwgY2hlY2tpbmcgcmVzdWx0cyAob3B0aW9uYWwgc3RvcHBpbmcgcnVsZXMpLg=="><span class='gt_from_md'>Collecting new data and refitting model after observing model evaluation / model checking results (optional stopping rules).</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left"><span data-qmd-base64="W0BBdXNwdXJnMjAyMV0="><span class='gt_from_md'>[@Auspurg2021]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left">input, output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Q2hhbmdpbmcgdGhlIG1vZGVsIHNwZWNpZmljYXRpb24gYWZ0ZXIgb2JzZXJ2aW5nIG1vZGVsbGluZyBjaGVja2luZyBvciBtb2RlbCBldmFsdWF0aW9uIHJlc3VsdHMu"><span class='gt_from_md'>Changing the model specification after observing modelling checking or model evaluation results.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0Bob2ZtYW4yMDIzXQ=="><span class='gt_from_md'>[@hofman2023]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q2hhbmdpbmcgcmFuZG9tIHNlZWQgYW5kIHJlZml0dGluZyBtb2RlbCBhZnRlciBzZWVpbmcgcmVzdWx0cyB0byBpbXByb3ZlIG1vZGVsIHBlcmZvcm1hbmNlLg=="><span class='gt_from_md'>Changing random seed and refitting model after seeing results to improve model performance.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left"><span data-qmd-base64="W0BMaXUyMDIwXQ=="><span class='gt_from_md'>[@Liu2020]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left">input</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="T3Zlci1maXR0aW5nIG1vZGVsIHRvIGhlbGQtb3V0IGRhdGEgYnkgbW9kaWZ5aW5nIG1vZGVsIGFmdGVyIGNyb3NzLXZhbGlkYXRpb24gLyBtb2RlbCBldmFsdWF0aW9uLg=="><span class='gt_from_md'>Over-fitting model to held-out data by modifying model after cross-validation / model evaluation.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BsZXdpczIwMjNd"><span class='gt_from_md'>[@lewis2023]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">output, model</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="QmF5ZXMgRmFjdG9yIGhhY2tpbmc6IG9wdGltaXNpbmcgdGhlIG1vZGVsIHRvIG9idGFpbiBhIEJheWVzIEZhY3RvciBhYm92ZSB0aGUgcmVxdWlyZWQgdGhyZXNob2xkLg=="><span class='gt_from_md'>Bayes Factor hacking: optimising the model to obtain a Bayes Factor above the required threshold.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left"><span data-qmd-base64="W0BCb2RuZXIyMDIwXQ=="><span class='gt_from_md'>[@Bodner2020]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left">input, model, output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RHJlZGdpbmcgZml0dGVkIG1vZGVscyBmb3Igc3RhdGlzdGljYWwgc2lnbmlmaWNhbmNlIG9yIG90aGVyIG91dGNvbWUgdmFyaWFibGUu"><span class='gt_from_md'>Dredging fitted models for statistical significance or other outcome variable.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BOYWthZ2F3YTIwMTdd"><span class='gt_from_md'>[@Nakagawa2017]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">model, output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q2hhbmdpbmcgdGhlIG1vZGVsIG91dHB1dCB0aHJlc2hvbGQgYWZ0ZXIgb2JzZXJ2aW5nIHJlc3VsdHMu"><span class='gt_from_md'>Changing the model output threshold after observing results.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left"><span data-qmd-base64="W0BmZW5nMjAxOV0="><span class='gt_from_md'>[@feng2019]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="S-hacking  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Q29udGludWluZyB0byBvcHRpbWlzZSBhIG1vZGVsIGFmdGVyIGFscmVhZHkgZXZhbHVhdGluZyBpdCBvbiB0aGUgdGVzdCBvciBob2xkLW91dCBkYXRhIHNldCBieSBhZGp1c3RpbmcgaHlwZXJwYXJhbWV0ZXJzLCBldmFsdWF0aW5nIG1ldHJpY3Mgb3Igb3RoZXIgb3V0Y29tZSB2YXJpYWJsZSBhZnRlciBhY2Nlc3NpbmcgdGhlIHRlc3Qgc2V0LiBJbmNsdWRlcyBtdWx0aXBsZSBhY2Nlc3MgdG8gdGhlIHRlc3QgZGF0YSBzZXQu"><span class='gt_from_md'>Continuing to optimise a model after already evaluating it on the test or hold-out data set by adjusting hyperparameters, evaluating metrics or other outcome variable after accessing the test set. Includes multiple access to the test data set.</span></span></td>
<td headers="S-hacking  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0Bob2ZtYW4yMDIzXQ=="><span class='gt_from_md'>[@hofman2023]</span></span></td>
<td headers="S-hacking  target" class="gt_row gt_left gt_striped">output, model</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Sample Curation">Sample Curation</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Sample Curation  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="Q29sbGVjdGluZyBuZXcgZGF0YSBhZnRlciBvYnNlcnZpbmcgbW9kZWwgY2hlY2tpbmcgb3IgbW9kZWwgZXZhbHVhdGlvbiByZXN1bHRzIChvcHRpb25hbCBzdG9wcGluZyBydWxlKS4="><span class='gt_from_md'>Collecting new data after observing model checking or model evaluation results (optional stopping rule).</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left"><span data-qmd-base64="W0Bob2ZtYW4yMDIzXQ=="><span class='gt_from_md'>[@hofman2023]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left">input</td></tr>
    <tr><td headers="Sample Curation  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="TWlzc2luZyBkYXRhIGhhY2tpbmc6IGNoYW5naW5nIHRoZSBzdHJhdGVneSB0byBoYW5kbGUgbWlzc2luZyBkYXRhIGFmdGVyIGZpdHRpbmcgdGhlIG1vZGVsIGFuZCBvYnNlcnZpbmcgbW9kZWwgY2hlY2tpbmcgLyBtb2RlbCBwZXJmb3JtYW5jZSBldmFsdWF0aW9uIHJlc3VsdHMu"><span class='gt_from_md'>Missing data hacking: changing the strategy to handle missing data after fitting the model and observing model checking / model performance evaluation results.</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left gt_striped">input</td></tr>
    <tr><td headers="Sample Curation  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RXhjbHVkaW5nIGRhdGEgcG9pbnRzLCBzdWNoIGFzIG91dGxpZXJzIG9yIG90aGVyIHZhbHVlcywgd2l0aG91dCBqdXN0aWZpY2F0aW9uIGFuZCBwcmlvciBwbGFubmluZywgaS5lLiBhZnRlciBmaXR0aW5nIG1vZGVsIGFuZCBvYnNlcnZpbmcgbW9kZWwgZXZhbHVhdGlvbiAvIG1vZGVsIGNoZWNraW5nIHJlc3VsdHMu"><span class='gt_from_md'>Excluding data points, such as outliers or other values, without justification and prior planning, i.e. after fitting model and observing model evaluation / model checking results.</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left">input</td></tr>
    <tr><td headers="Sample Curation  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="VXNpbmcgYmFkIG9yIGVhc2lseSBvYnRhaW5hYmxlLCBvciBpbmFwcHJvcHJpYXRlIGRhdGEgdG8gZGV2ZWxvcCBtb2RlbC4="><span class='gt_from_md'>Using bad or easily obtainable, or inappropriate data to develop model.</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BIaWxkZWJyYW5kdDIwMThd"><span class='gt_from_md'>[@Hildebrandt2018]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left gt_striped">input</td></tr>
    <tr><td headers="Sample Curation  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="RXhjbHVkaW5nIGRhdGEgcG9pbnRzLCBzdWNoIGFzIG91dGxpZXJzIG9yIG90aGVyIHZhbHVlcywgd2l0aG91dCBqdXN0aWZpY2F0aW9uIGFuZCBwcmlvciBwbGFubmluZywgaS5lLiBhZnRlciBmaXR0aW5nIG1vZGVsIGFuZCBvYnNlcnZpbmcgbW9kZWwgZXZhbHVhdGlvbiAvIG1vZGVsIGNoZWNraW5nIHJlc3VsdHMu"><span class='gt_from_md'>Excluding data points, such as outliers or other values, without justification and prior planning, i.e. after fitting model and observing model evaluation / model checking results.</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left"><span data-qmd-base64="W0BIaWxkZWJyYW5kdDIwMThd"><span class='gt_from_md'>[@Hildebrandt2018]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left">input</td></tr>
    <tr><td headers="Sample Curation  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="U2VsZWN0aXZlIHNhbXBsaW5nIC8gYmlhc2VkIHNhbXBsaW5nLCBlLmcuIGNvbnZlbmllbmNlIG9yIG9wcG9ydHVuaXN0aWMgc2FtcGxpbmcu"><span class='gt_from_md'>Selective sampling / biased sampling, e.g. convenience or opportunistic sampling.</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left gt_striped">input</td></tr>
    <tr><td headers="Sample Curation  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="VXNpbmcgYWQgaG9jIGV4Y2x1c2lvbiBjcml0ZXJpYSBvciBtb2RpZnlpbmcgZXhjbHVzaW9uIGNyaXRlcmlhIGFmdGVyIGZpdHRpbmcgbW9kZWwgYW5kIG9ic2VydmluZyBtb2RlbCBldmFsdWF0aW9uIC8gbW9kZWwgY2hlY2tpbmcgcmVzdWx0cy4="><span class='gt_from_md'>Using ad hoc exclusion criteria or modifying exclusion criteria after fitting model and observing model evaluation / model checking results.</span></span></td>
<td headers="Sample Curation  source" class="gt_row gt_left"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="Sample Curation  target" class="gt_row gt_left">input</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Selective Debugging">Selective Debugging</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Selective Debugging  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="RXJyb3IgY2hlY2tpbmcgb25seSB3aGVuIHVuZXhwZWN0ZWQgb3IgYW5vbWFsb3VzIHJlc3VsdHMgYXJlIHByb2R1Y2VkLg=="><span class='gt_from_md'>Error checking only when unexpected or anomalous results are produced.</span></span></td>
<td headers="Selective Debugging  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BSaXNiZXkyMDA1XQ=="><span class='gt_from_md'>[@Risbey2005]</span></span></td>
<td headers="Selective Debugging  target" class="gt_row gt_left gt_striped">model</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="Selective Reporting">Selective Reporting</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Selective Reporting  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="U2VsZWN0aXZlIHJlcG9ydGluZyBvZiBtb2RlbCBldmFsdWF0aW9uIG1ldHJpY3MgYWZ0ZXIgb2JzZXJ2aW5nIG1vZGVsIHJlc3VsdHMsIHdoZW4gdGhlcmUgYXJlIG11bHRpcGxlIG1vZGVsIGV2YWx1YXRpb24gbWV0cmljcyBvciBhbmFseXNlcy4="><span class='gt_from_md'>Selective reporting of model evaluation metrics after observing model results, when there are multiple model evaluation metrics or analyses.</span></span></td>
<td headers="Selective Reporting  source" class="gt_row gt_left"><span data-qmd-base64="W0BCZW5uZXR0MjAxM10="><span class='gt_from_md'>[@Bennett2013]</span></span></td>
<td headers="Selective Reporting  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="Selective Reporting  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="U2VsZWN0aXZlbHkgcmVwb3J0aW5nIHBlcmZvcm1hbmNlIG1ldHJpY3MgdGhhdCBpbmNyZWFzZSBwZXJjZXB0aW9uIG9mIHBlcmZvcm1hbmNlIGFmdGVyIGZpdHRpbmcgbW9kZWwgYW5kIG9ic2VydmluZyBtb2RlbCBldmFsdWF0aW9uIC8gbW9kZWwgY2hlY2tpbmcgcmVzdWx0cy4="><span class='gt_from_md'>Selectively reporting performance metrics that increase perception of performance after fitting model and observing model evaluation / model checking results.</span></span></td>
<td headers="Selective Reporting  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BOYWd5MjAyNV0="><span class='gt_from_md'>[@Nagy2025]</span></span></td>
<td headers="Selective Reporting  target" class="gt_row gt_left gt_striped">output</td></tr>
    <tr><td headers="Selective Reporting  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="U2VsZWN0aXZlbHkgcmVwb3J0aW5nIHBlcmZvcm1hbmNlIG1ldHJpY3MgdGhhdCBpbmNyZWFzZSBwZXJjZXB0aW9uIG9mIHBlcmZvcm1hbmNlIGFmdGVyIGZpdHRpbmcgbW9kZWwgYW5kIG9ic2VydmluZyBtb2RlbCBldmFsdWF0aW9uIC8gbW9kZWwgY2hlY2tpbmcgcmVzdWx0cy4="><span class='gt_from_md'>Selectively reporting performance metrics that increase perception of performance after fitting model and observing model evaluation / model checking results.</span></span></td>
<td headers="Selective Reporting  source" class="gt_row gt_left"><span data-qmd-base64="W0BIaWxkZWJyYW5kdDIwMThd"><span class='gt_from_md'>[@Hildebrandt2018]</span></span></td>
<td headers="Selective Reporting  target" class="gt_row gt_left">output</td></tr>
    <tr><td headers="Selective Reporting  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="U2VsZWN0aXZlIHJlcG9ydGluZyBvZiByb2J1c3RuZXNzIGNoZWNrcyBpbiBzdXBwb3J0IG9mIG1haW4gcmVzdWx0cy4="><span class='gt_from_md'>Selective reporting of robustness checks in support of main results.</span></span></td>
<td headers="Selective Reporting  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BBdXNwdXJnMjAyMV0="><span class='gt_from_md'>[@Auspurg2021]</span></span></td>
<td headers="Selective Reporting  target" class="gt_row gt_left gt_striped">output</td></tr>
    <tr><td headers="Selective Reporting  qrp_coded" class="gt_row gt_left"><span data-qmd-base64="U2VsZWN0aXZlbHkgcmVwb3J0aW5nIGNvbXBhcmlzb25zIHRoYXQgc3VwcG9ydCBhIGZvcmVnb25lIGNvbmNsdXNpb24u"><span class='gt_from_md'>Selectively reporting comparisons that support a foregone conclusion.</span></span></td>
<td headers="Selective Reporting  source" class="gt_row gt_left"><span data-qmd-base64="W0Bob2ZtYW4yMDIzXQ=="><span class='gt_from_md'>[@hofman2023]</span></span></td>
<td headers="Selective Reporting  target" class="gt_row gt_left">output</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="3" class="gt_group_heading" scope="colgroup" id="NA">NA</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="NA  qrp_coded" class="gt_row gt_left gt_striped"><span data-qmd-base64="Q2hhbmdpbmcgbW9kZWwgb3V0cHV0IGZvcm1hdCBvciB0cmFuc2Zvcm1hdGlvbiBhZnRlciBvYnNlcnZpbmcgcmVzdWx0cy4="><span class='gt_from_md'>Changing model output format or transformation after observing results.</span></span></td>
<td headers="NA  source" class="gt_row gt_left gt_striped"><span data-qmd-base64="W0BmZW5nMjAxOV0="><span class='gt_from_md'>[@feng2019]</span></span></td>
<td headers="NA  target" class="gt_row gt_left gt_striped">output</td></tr>
  </tbody>
  
  
</table>
</div>
```

:::
:::


:::

# Discussion

# References

:::{#refs}
:::


`#show figure.where(kind: table): set block(breakable: true)`{=typst}

::: {.appendix}



# Appendix A



:::
