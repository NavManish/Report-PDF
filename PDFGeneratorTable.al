table 50104 "PDF Generator Extension"
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;Sr; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }
        field(2;PDF;BLOB)
        {

        }
    }
    
    keys
    {
        key(PK; Sr)
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
    
}