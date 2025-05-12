"You can process XML document using class libraries(iXML,sXML)
"iXML - Intergreated XML library
"sXML - Serial XML library

"iXML - provides methods for validating and parsing data.
"Disadavantge - More memory consumption
DATA(ixml_cr)     = cl_ixml_core=>create( ).

"sXML - Provides XML readers and writers for different sources and target.
"1.process XML data sequentially
"2. This allows you to parse and render XML data in a token-based (Node based).
"3.unlike iXML, more formats possible(Standard XML 1.0, XOP, binary XML, and JSON)
"CAST operator required to access special methods.
DATA(writer) = CAST if_sxml_writer( cl_sxml_string_writer=>create( type     = if_sxml=>co_xt_xml10
                                                                   encoding = 'UTF-8' ) ).
