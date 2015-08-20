package Text::ANSI::WideUtil;

# DATE
# VERSION

use 5.010001;
use strict 'subs', 'vars';
use warnings;

use Text::WideChar::Util qw(mbswidth mbtrunc);

require Exporter;
our @ISA       = qw(Exporter);
our @EXPORT_OK = qw(
                       ta_mbpad
                       ta_mbsubstr
                       ta_mbswidth
                       ta_mbswidth_height
                       ta_mbtrunc
                       ta_mbwrap
               );

use Text::ANSI::BaseUtil ();

our $re = $Text::ANSI::BaseUtil::re;
*{$_} = \&{"Text::ANSI::BaseUtil::$_"} for @EXPORT_OK;

1;
# ABSTRACT: Routines for text containing ANSI color codes (wide functions only)

=head1 DESCRIPTION

This module provides routines for dealing with text that contains ANSI color
codes, e.g. for determining its length/width (excluding the color codes),
stripping the color codes, extracting the color codes, and so on.

There is also a non-wide variant: L<Text::ANSI::NonWideUtil>. The difference is
that ::WideUtil can handle wide (full-width) Unicode characters, while
::NonWideUtil can also handle normal/halfwidth/ASCII characters.


=head1 FUNCTIONS

# INSERT_BLOCK_FROM_MODULE: Text::ANSI::Util pod_wide_functions


=head1 SEE ALSO

L<Text::ANSI::NonWideUtil>
