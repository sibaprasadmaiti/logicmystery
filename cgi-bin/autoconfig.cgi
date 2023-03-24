#!/usr/bin/perl
# This script gets copied to each domain's CGI directory to output the
# correct SMTP and IMAP server details.

# These variables get replaced when the script is copied
$OWNER = "Migrated\ cPanel\ server\ logicmystery\.com";
$USER = 'logicmystery';
$SMTP_HOST = 'logicmystery.com';
$SMTP_PORT = '587';
$SMTP_TYPE = 'plain';
$SMTP_SSL = 'no';
$SMTP_ENC = 'password-cleartext';
$IMAP_HOST = 'mail.logicmystery.com';
$IMAP_PORT = '993';
$IMAP_TYPE = 'SSL';
$IMAP_SSL = 'yes';
$IMAP_ENC = 'password-cleartext';
$PREFIX = 'logicmystery';
$STYLE = '0';

sub error_exit
{
print "Content-type: text/plain\n\n";
print @_,"\n";
exit(0);
}

# Get email address parameter
if ($ENV{'QUERY_STRING'} =~ /emailaddress=([^&]+)/) {
	# Thunderbird style
	$email = $1;
	$email =~ s/%(..)/pack("c",hex($1))/ge;
	($mailbox, $SMTP_DOMAIN) = split(/\@/, $email);
	$mailbox && $SMTP_DOMAIN ||
	    &error_exit("emailaddress parameter is not in user@domain format");
	}
elsif ($ENV{'REQUEST_METHOD'} eq 'POST') {
	# Outlook style
	read(STDIN, $buf, $ENV{'CONTENT_LENGTH'});
	$buf =~ /<EMailAddress>([^@<>]+)@([^<>]+)<\/EMailAddress>/i ||
		&error_exit("EMailAddress missing from input XML");
	($mailbox, $SMTP_DOMAIN) = ($1, $2);
	$email = $1."\@".$2;
	}
else {
	&error_exit("Missing emailaddress parameter");
	}

# Work out the full username
if ($mailbox eq $USER) {
	# Domain owner, so no need for prefix
	$SMTP_LOGIN = $USER;
	}
elsif ($STYLE == 0) {
	$SMTP_LOGIN = $mailbox.".".$PREFIX;
	}
elsif ($STYLE == 1) {
	$SMTP_LOGIN = $mailbox."-".$PREFIX;
	}
elsif ($STYLE == 2) {
	$SMTP_LOGIN = $PREFIX.".".$mailbox;
	}
elsif ($STYLE == 3) {
	$SMTP_LOGIN = $PREFIX."-".$mailbox;
	}
elsif ($STYLE == 4) {
	$SMTP_LOGIN = $mailbox."_".$PREFIX;
	}
elsif ($STYLE == 5) {
	$SMTP_LOGIN = $PREFIX."_".$mailbox;
	}
elsif ($STYLE == 6) {
	$SMTP_LOGIN = $email;
	}
elsif ($STYLE == 7) {
	$SMTP_LOGIN = $mailbox."\%".$PREFIX;
	}
else {
	&error_exit("Unknown style $STYLE");
	}
$MAILBOX = $mailbox;

# Output the XML
print "Content-type: text/xml\n\n";
if ($ENV{'SCRIPT_NAME'} =~ /autodiscover.xml/i) {
	# Outlook
	print <<EOF;
<?xml version="1.0" encoding="utf-8" ?>
<Autodiscover xmlns="http://schemas.microsoft.com/exchange/autodiscover/responseschema/2006">
  <Response xmlns="http://schemas.microsoft.com/exchange/autodiscover/outlook/responseschema/2006a">
    <Account>
      <AccountType>email</AccountType>
      <Action>settings</Action>
      <Protocol>
	<Type>IMAP</Type>
        <TTL>24</TTL>
	<Server>$IMAP_HOST</Server>
        <Port>$IMAP_PORT</Port>
	<LoginName>$SMTP_LOGIN</LoginName>
        <DomainRequired>off</DomainRequired>
        <SSL>$IMAP_SSL</SSL>
	<AuthRequired>on</AuthRequired>
      </Protocol>
      <Protocol>
	<Type>SMTP</Type>
        <TTL>24</TTL>
	<Server>$SMTP_HOST</Server>
        <Port>$SMTP_PORT</Port>
	<LoginName>$SMTP_LOGIN</LoginName>
        <DomainRequired>off</DomainRequired>
        <SSL>$SMTP_SSL</SSL>
	<AuthRequired>on</AuthRequired>
      </Protocol>
    </Account>
  </Response>
</Autodiscover>
EOF
	}
else {
	# Thunderbird
	print <<EOF;
<?xml version="1.0" encoding="UTF-8"?>
 
<clientConfig version="1.1">
  <emailProvider id="$SMTP_DOMAIN">
    <domain>$SMTP_DOMAIN</domain>
    <displayName>$OWNER Email</displayName>
    <displayShortName>$OWNER</displayShortName>
    <incomingServer type="imap">
      <hostname>$IMAP_HOST</hostname>
      <port>$IMAP_PORT</port>
      <socketType>$IMAP_TYPE</socketType>
      <authentication>$IMAP_ENC</authentication>
      <username>$SMTP_LOGIN</username>
    </incomingServer>
    <outgoingServer type="smtp">
      <hostname>$SMTP_HOST</hostname>
      <port>$SMTP_PORT</port>
      <socketType>$SMTP_TYPE</socketType>
      <authentication>$SMTP_ENC</authentication>
      <username>$SMTP_LOGIN</username>
    </outgoingServer>
  </emailProvider>
</clientConfig>
EOF
	}

