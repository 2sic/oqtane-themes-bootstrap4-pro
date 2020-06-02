# Theme Src Area WIP

Everything in this folder is used to generate JavaScript and CSS for the theme. 


## WIP - Issues / Tasks

### Done

* [x] Webpack
* [x] auto-watcher with build to Oqtane server
* [x] import template scss / ts from Bootstrap4 Instant

### Next

1. Sidr menu alternative without jQuery
1. Theme with features similar to Bootstrap4 instant, incl.
    1. Body classes to denote structure, properties, etc.
    1. Set title
    1. 


### Low Priority

1. koi.json or alternative



It uses these technologies:

## General

1. node.js with NPM to load all the parts / tools needed. This is all configured in the `package.json`
1. webpack and various plugins to get the magic going


## Typescript which is converted to JavaScript WIP

1. `ts\theme.ts` is parsed by typescript and compiled into `/dist/theme.js`
1. SourceMaps is auto generated and included (thanks to Webpack)


## SASS/SCSS which is converted to CSS WIP

1. Bootstrap 4 as the foundation / framework we're building upon
1. `theme.scss` is parsed, auto-imports our configuration from `_variables.scss`, Bootstrap etc. etc.
1. ...and compiles everything to `/dist/theme.css`
1. With SourceMaps and everything (done by Webpack)