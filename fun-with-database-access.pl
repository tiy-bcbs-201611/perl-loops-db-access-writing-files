#!/usr/bin/env perl
use warnings;
use strict;
use DBI;
use Data::Dumper;

my $dbh = DBI->connect("dbi:ODBC:DSN=AdventureWorks")
          or die("Could not connect to database.", DBI::errstr);

my $sth = $dbh->prepare("SELECT LastName, FirstName FROM Person.Person")
          or die("Could not perform the query.", $dbh->errstr);

$sth->execute or die("Something bad happened.", $sth->errstr);
while(my $row_ref = $sth->fetchrow_arrayref) {
  print(Dumper($row_ref));
}

$sth->execute or die("Something bad happened.", $sth->errstr);
while(my $row_ref = $sth->fetchrow_hashref) {
  print(Dumper($row_ref));
}

my $sql = <<"INSERT_A_BUNCH_OF_HOOEY";
INSERT INTO [Person].[CountryRegion]
           ([CountryRegionCode]
           ,[Name]
           ,[ModifiedDate])
     VALUES
           ('XX'
           ,'Unknown Lands of Valor'
           ,GETDATE())
INSERT_A_BUNCH_OF_HOOEY

$dbh->do($sql) or die("Could not do this, man.", $dbh->errstr);
