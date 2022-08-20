#!/usr/bin/env python3

"""
Pandoc filter to convert all block quotes to TCG Informative text.
"""

from pandocfilters import toJSONFilter, Str, Div

def informative(key, value, format, meta):
  if key == 'BlockQuote':
    return Div( value, attributes={'custom-style': 'TCG Informative'} )

if __name__ == "__main__":
  toJSONFilter(informative)