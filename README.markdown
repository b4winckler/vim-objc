## What is in here?

This repository contains my Vim configuration files for Objective-C editing.
If you have any improvements, please don't hesitate to send them my way.


### Improved indenting

The default indent expression has a tendency to align colons even when they
should not be aligned.  Here is an example where the default indent fails, but
which my improved indent expression can handle:

```objc
- (void)fun
{
    // Avoid aligning colons here
    if ([obj callSomething:x])
        [obj dontAlign:y]

    // Avoid aligning here, preserve at least one shiftwidth of indent
    [obj firstParam:x
        doNotAlignThis:z];
}
```

I have also added better indenting for blocks, for example:

```objc
dispatch_async(queue, ^{
    do_stuff();   // indented one shiftwidth
}); // previous indent restored
```

Also, avoid indenting things like `@interface`, `@end`, and so on.


### Updated syntax highlighting

Objective-C 2.0 introduced new keywords which should be highlighted but are not
by default.  Automatic reference counting (ARC) also adds a few keywords that
are not highlighted.  Try to remedy this situation.


### Miscellaneous

Set `'commentstring'` to use C++ style comments instead of C-style comments
(this is for example used by the
[commentary.vim](https://github.com/tpope/vim-commentary) plugin).

Set `'includeexpr'` so that commands like `gf` work on framework imports.  For
example, place the cursor inside the angle brackets on a line like `#import
<OpenGL/OpenGL.h>` and hit `gf` to open up the `OpenGL.h` header.


## Installing

Assuming you are using the Pathogen plugin, just clone this repository in your
`~/.vim/bundle` folder like so:

```
$ cd ~/.vim/bundle
$ git clone https://github.com/b4winckler/vim-objc.git
```
