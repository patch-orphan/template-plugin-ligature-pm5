use strict;
use warnings;
use utf8;
use Template::Test;

test_expect(\*DATA);

__DATA__
[% USE Ligature %]

--test--
[% 'offloading floral offices refines effectiveness' | ligature %]
--expect--
oﬄoading ﬂoral oﬃces reﬁnes eﬀectiveness

--test--
[% 'offloading floral offices refines effectiveness' | ligature | html_entity %]
--expect--
o&#xFB04;oading &#xFB02;oral o&#xFB03;ces re&#xFB01;nes e&#xFB00;ectiveness
