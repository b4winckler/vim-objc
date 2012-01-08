syn match objcDirective "@property\|@synthesize\|@dynamic\|@package"

" ARC type modifiers
syn keyword objcTypeModifier __bridge __bridge_retained __bridge_transfer __autoreleasing __strong __weak __unsafe_unretained

" Block modifiers
syn keyword objcTypeModifier __block
