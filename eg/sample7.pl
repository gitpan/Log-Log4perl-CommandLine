use Log::Log4perl qw(:easy);
use Log::Log4perl::CommandLine ':all',
':loginit' => q(
    log4perl.logger = WARN,  screen
    log4perl.appender.screen=Log::Log4perl::Appender::Screen
    log4perl.appender.screen.layout=Log::Log4perl::Layout::PatternLayout
    log4perl.appender.screen.layout.ConversionPattern=[%-5p] %c %m%n
);

use SampleModule;

SampleModule::test();

TRACE "trace message";
DEBUG "debug message";
INFO  "info  message";
WARN  "warn  message";
ERROR "error message";
FATAL "fatal message";
