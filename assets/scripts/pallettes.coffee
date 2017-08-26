---
---



$ ->
  pallettes = {
     "colors":[
        [
           "#F9D5D3",
           "#ECA4A6",
           "#807F89",
           "#99A89E",
           "#BBC7BA"
        ],
        [
           "#8a211e",
           "#c55858",
           "#9ec7d4",
           "#49818b",
           "#0f2e33"
        ],
        [
           "#e5e2db,",
           "#cfc2c9",
           "#8f7b86",
           "#3d3936",
           "#5b726c"
        ],
        [
           "#BE3E2C",
           "#CD6859",
           "#403837",
           "#CECDCD",
           "#9A5A4E"
        ],
        [
           "#E7BAA0",
           "#E5DACE",
           "#B2B2A2",
           "#6D7973",
           "#3F3931"
        ],
        [
           "#d0442d",
           "#e8683b",
           "#d5fbef",
           "#8eceb9",
           "#486b62"
        ],
        [
           "#ff7b89",
           "#8b5183",
           "#6f5f90",
           "#758eb6",
           "#a7c9d2"
        ],
        [
           "#2a3249",
           "#68656e",
           "#aba1a0",
           "#ddd2ce",
           "#f7efed"
        ],
        [
           "#6b4b60",
           "#8f7a89",
           "#fef9e6",
           "#e2bea6",
           "#c18e81"
        ],
        [
           "#1b2433",
           "#1a3f52",
           "#365b6d",
           "#a3a6ad",
           "#dfa18c"
        ],
        [
           "#d9d1ce",
           "#a2a9af",
           "#e9edee",
           "#4c5870",
           "#3c3c3a"
        ],
        [
           "#ee5f63",
           "#fe9389",
           "#eed9be",
           "#e5c4a3",
           "#7ea5a4"
        ],
        [
           "#203139",
           "#255d6e",
           "#5a707e",
           "#d3a9ab",
           "#e5cfd1"
        ],
        [
           "#60917e",
           "#9fb083",
           "#fefadd",
           "#eed37a",
           "#181d17"
        ]
     ]
  }

  getRandomInt  = (min, max) ->
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min

  colorsChosen = pallettes.colors[getRandomInt(0,pallettes.colors.length)]

  $pallette = $('.pallette')
  $temp_div = $("<div></div>");

  for color in colorsChosen
    do (color) ->
      $temp_div.append("<li><div class='pallette-color' style='background-color:#{color}'></div></li>")
  $pallette.append($temp_div.html())
