## What is in here?

This repository contains my Vim configuration files for Objective-C editing.
Once tested, I intend to submit my changes to be included with the default Vim
distribution.

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

Also, avoid indenting things like `@interface`, `@end`, and so on.


## Installing

Assuming you use the Pathogen plugin, just clone this repository in your
`~/.vim/bundle` folder.
