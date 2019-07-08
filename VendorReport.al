report 50103 "Vendor Report"
{
    
    DefaultLayout = RDLC;
    RDLCLayout = 'Report In PDF\Vendorreport.rdl';
    dataset
    {
        
        
        dataitem(VendorExtension; "Vendor Extension")
        {
            RequestFilterFields = "No.";
            
            column(No_;"No.")
            {

            }
            column(Name;Name) 
            {

            }   
            column(Balance;Balance)
            {

            }
            column(Cmp_Name;CompanyInformation_gRec.Name)
            {

            }
            column(UserId;UserId)
            {

            }
            column(TODAY;Today)
            {
                
            }
        }
        
    }
    
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    /* field(Name; SourceExpression)
                    {
                        
                    } */
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        CompanyInformation_gRec : Record "Company Information";
    trigger OnPreReport()
    begin
     CompanyInformation_gRec.get;   
    end;
}
