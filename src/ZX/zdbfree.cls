Class %ZX.dbfree Extends %Persistent [ Final, SqlRowIdPrivate ]
{
Parameter MANAGEDEXTENT As INTEGER [ Constraint = "0,1", Flags = ENUM ] = 0;

Parameter DEFAULTGLOBAL = "^mtemp.ZX";

Property DatabaseName As %String;

Property mbSize As %Integer;

Property mbAvail As %Decimal(SCALE = 1);

Property FreePrz As %Decimal(SCALE = 2);

Index idx On DatabaseName [ IdKey ];

Storage Default
{
<Data name="dbfreeDefaultData">
<Value name="1">
<Value>mbSize</Value>
</Value>
<Value name="2">
<Value>mbAvail</Value>
</Value>
<Value name="3">
<Value>FreePrz</Value>
</Value>
</Data>
<DataLocation>^mtemp.ZXD</DataLocation>
<DefaultData>dbfreeDefaultData</DefaultData>
<IdLocation>^mtemp.ZXD</IdLocation>
<IndexLocation>^mtemp.ZXI</IndexLocation>
<StreamLocation>^mtemp.ZXS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
