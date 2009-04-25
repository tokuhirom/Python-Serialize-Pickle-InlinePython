use inc::Module::Install;
name 'Python-Serialize-Pickle-InlinePython';
all_from 'lib/Python/Serialize/Pickle/InlinePython.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

build_requires 'Test::More';
use_test_base;
auto_include;
WriteAll;
