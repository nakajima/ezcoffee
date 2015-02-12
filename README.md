# ezcoffee

Generates quick coffeescript projects for me. The directory looks like this:

Run `ezcoffee generate my-project`. You'll get a directory that looks like this.

```
my-project
├── index.html
├── js
└── src
    └── my-project.coffee
```

`cd` into `my-project` and run `ezcoffee run`

Then edit files in `src/my-project.coffee`. They'll be compiled and written into `js/my-project.js` (which is included in `index.html`).

It also includes jQuery automatically.
