# SchXslt2 Schematron to XSLT 3.0 transpiler

SchXslt2 is the second iteration of SchXslt, a modern XSLT-based implementation of the ISO Schematron validation
language (ISO/IEC-19757:3).

SchXslt2 Schematron to XSLT 3.0 transpiler is copyright by David Maus &lt;dmaus@dmaus.name&gt; and released under the
terms of the MIT license.

## Transpiler parameters

### schxslt:phase

Name of the validation phase. The value '#DEFAULT' selects the pattern in the sch:schema/@defaultPhase attribute or
'#ALL' if this attribute is not present. The value '#ALL' selects all patterns. Defaults to '#DEFAULT'.

### schxslt:streamable

Set to boolean true() to create a streamable validation stylesheet. This *does not* check the streamability of XPath
expressions in rules, assertions, variables etc. It merely declares the modes in the validation stylesheet to be
streamable and removes the @location attribute from the SVRL output when no location function is given because the
default fn:path() is not streamable. Defaults to false().

### schxslt:location-function

Name of a function f($context as node()) as xs:string that provides location information for the SVRL report. Defaults
to fn:path() when not set.
