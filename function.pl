system("command","argl");
if($?==1)
{
print "command failed: $!\n";
}
else
{
print "command exited with value %d",$? >>8;
}
