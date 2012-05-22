Why?
====
I finally realised that `[UtilFunctions colorToHex:color]` isn't as elegant as a category on NSColor.

Usage
=====

**Using a hexadecimal color to create an NSColor:**

    @try {
        // Both shorthand and full forms of hexadecimal colours are accepted
        [colorWell setColor:[NSColor colorWithHex:@"#F00"]];
        [colorWell setColor:[NSColor colorWithHex:@"#Ff0000"]];
    }
    @catch (NSException *exception) {
        NSLog(@"%@", [exception description]);
    }

It'll throw an exception if one attempts to use a string that is not 3 or 6 characters in length, excluding the hash.

- - -

**Getting the hexadecimal representation of a given NSColor:**

    NSString *hexColor = [color hexColor]


More Information
================

See this blog post: [Extracting hex value from NSColor](http://pagesofinterest.net/blog/2011/12/extracting-hex-value-from-nscolor/).