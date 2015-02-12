# ezcoffee

Generates quick coffeescript projects and compiles them.

Run `ezcoffee generate my-project`. You'll get a directory that looks like this.

```
my-project
├── index.html
├── js
└── src
    └── my-project.coffee
```

`cd` into `my-project` and run `ezcoffee run`

Then edit files in `src/my-project.coffee`. They'll be compiled and written into `js/my-project.js` (which is included in `index.html`). `index.html` also includes jQuery.

#### Install

```sh
$ gem install ezcoffee
```

#### Why not write it in coffeescript?

I don't know how.
