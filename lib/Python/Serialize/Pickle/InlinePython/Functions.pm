package Python::Serialize::Pickle::InlinePython::Functions;
use strict;
use warnings;
use base 'Exporter';
our @EXPORT = qw/Dump Load DumpFile LoadFile/;

use Inline Python => <<'...';
from pickle import dumps, loads
import pickle

def _LoadFile(fname):
    return pickle.load(open(fname, 'rb'))

def DumpFile(fname, obj):
    return pickle.dump(obj, open(fname, 'wb'))
...

sub LoadFile { scalar _LoadFile(@_) }
sub Load { scalar loads(@_) }
sub Dump { dumps(@_) }

__END__
