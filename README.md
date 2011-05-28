## What is in here?

This repository contains my Vim configuration files for Objective-C editing.

If you have any improvements, please don't hesitate to send them my way.

### Improved indenting

The default indent expression has a tendency to align colons even when they
should not be aligned.  Here is an example:

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
