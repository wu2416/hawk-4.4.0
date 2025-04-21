$java_home = ($Env:JAVA_HOME)
$java_opts = ($Env:JAVA_OPTS)
$default_java_opts="-Xms50m -Xmx500m -Dlog4j2.configurationFile=log4j2.cli.properties -D`"file.encoding`"=UTF-8".Split()
if (!$java_home){
    Write-Warning "JAVA_HOME is not set. HawkScan requires a java installation to run."
    exit
} elseif ($java_home -match "\\$") {
    $java_home = $java_home -replace ".{1}$"
}
if ($java_home -match "\\bin$") {
    $java_home = $java_home -replace ".{4}$"
}
if ($java_opts) {
    $java_options=$java_opts.Split()
}
& $java_home\bin\java $default_java_opts $java_options -jar $PSScriptRoot\talon-bootstrap-4.4.0.jar $args
exit $LASTEXITCODE
