table 50102 "Vendor Extension"
{
    // version NAVW111.00.00.21441,NAVNA11.00.00.21441

    CaptionML = ENU='Vendor',
                ESM='Proveedor',
                FRC='Fournisseur',
                ENC='Vendor';
    DataCaptionFields = "No.",Name;
    DrillDownPageID = "Vendor List Extension";
    LookupPageID = "Vendor List Extension";
    Permissions = TableData "Vendor Ledger Entry"=r;

    fields
    {
        field(1;"No.";Code[20])
        {
            CaptionML = ENU='No.',
                        ESM='Nº',
                        FRC='N°',
                        ENC='No.';

            trigger OnValidate();
            begin
                if "No." <> xRec."No." then begin
                  PurchSetup.GET;
                  NoSeriesMgt.TestManual(PurchSetup."Vendor Nos.");
                  "No. Series" := '';
                end;
                if "Invoice Disc. Code" = '' then
                  "Invoice Disc. Code" := "No.";
            end;
        }
        field(2;Name;Text[50])
        {
            CaptionML = ENU='Name',
                        ESM='Nombre',
                        FRC='Nom',
                        ENC='Name';

            trigger OnValidate();
            begin
                if ("Search Name" = UPPERCASE(xRec.Name)) or ("Search Name" = '') then
                  "Search Name" := Name;
            end;
        }
        field(3;"Search Name";Code[50])
        {
            CaptionML = ENU='Search Name',
                        ESM='Alias',
                        FRC='Rechercher un nom',
                        ENC='Search Name';
        }
        field(4;"Name 2";Text[50])
        {
            CaptionML = ENU='Name 2',
                        ESM='Nombre 2',
                        FRC='Nom 2',
                        ENC='Name 2';
        }
        field(5;Address;Text[50])
        {
            CaptionML = ENU='Address',
                        ESM='Dirección',
                        FRC='Adresse',
                        ENC='Address';
        }
        field(6;"Address 2";Text[50])
        {
            CaptionML = ENU='Address 2',
                        ESM='Colonia',
                        FRC='Adresse 2',
                        ENC='Address 2';
        }
        field(7;City;Text[30])
        {
            CaptionML = ENU='City',
                        ESM='Municipio/Ciudad',
                        FRC='Ville',
                        ENC='City';
            TableRelation = IF ("Country/Region Code"=CONST('')) "Post Code".City
                            ELSE IF ("Country/Region Code"=FILTER(<>'')) "Post Code".City WHERE ("Country/Region Code"=FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnValidate();
            begin
                PostCode.ValidateCity(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GUIALLOWED);
            end;
        }
        field(8;Contact;Text[50])
        {
            CaptionML = ENU='Contact',
                        ESM='Contacto',
                        FRC='Contact',
                        ENC='Contact';

            trigger OnLookup();
            var
                ContactBusinessRelation : Record "Contact Business Relation";
                Cont : Record Contact;
            begin
                /* if ContactBusinessRelation.FindByRelation(ContactBusinessRelation."Link to Table"::Vendor,"No.") then
                  Cont.SETRANGE("Company No.",ContactBusinessRelation."Contact No.")
                else
                  Cont.SETRANGE("Company No.",''); */

                if "Primary Contact No." <> '' then
                  if Cont.GET("Primary Contact No.") then ;
                if PAGE.RUNMODAL(0,Cont) = ACTION::LookupOK then
                  VALIDATE("Primary Contact No.",Cont."No.");
            end;

            trigger OnValidate();
            begin
                if RMSetup.GET then
                  if RMSetup."Bus. Rel. Code for Vendors" <> '' then begin
                    if (xRec.Contact = '') and (xRec."Primary Contact No." = '') and (Contact <> '') then begin
                      MODIFY;
                      //UpdateContFromVend.OnModify(Vendor_gRec);
                      //UpdateContFromVend.InsertNewContactPerson(Vendor_gRec,false);
                      MODIFY(true);
                    end;
                    exit;
                  end;
            end;
        }
        field(9;"Phone No.";Text[30])
        {
            CaptionML = ENU='Phone No.',
                        ESM='Nº teléfono',
                        FRC='N° téléphone',
                        ENC='Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(10;"Telex No.";Text[20])
        {
            CaptionML = ENU='Telex No.',
                        ESM='Nº télex',
                        FRC='N° télex',
                        ENC='Telex No.';
        }
        field(14;"Our Account No.";Text[20])
        {
            CaptionML = ENU='Our Account No.',
                        ESM='Ntro. nº cuenta',
                        FRC='Notre n° compte',
                        ENC='Our Account No.';
        }
        field(15;"Territory Code";Code[10])
        {
            CaptionML = ENU='Territory Code',
                        ESM='Cód. territorio',
                        FRC='Code de territoire',
                        ENC='Territory Code';
            TableRelation = Territory;
        }
        field(16;"Global Dimension 1 Code";Code[20])
        {
            CaptionClass = '1,1,1';
            CaptionML = ENU='Global Dimension 1 Code',
                        ESM='Cód. dimensión global 1',
                        FRC='Code de dimension principal 1',
                        ENC='Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));

           
        }
        field(17;"Global Dimension 2 Code";Code[20])
        {
            CaptionClass = '1,1,2';
            CaptionML = ENU='Global Dimension 2 Code',
                        ESM='Cód. dimensión global 2',
                        FRC='Code de dimension principal 2',
                        ENC='Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));

            
        }
        field(19;"Budgeted Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CaptionML = ENU='Budgeted Amount',
                        ESM='Importe pptdo.',
                        FRC='Montant budgété',
                        ENC='Budgeted Amount';
        }
        field(21;"Vendor Posting Group";Code[20])
        {
            CaptionML = ENU='Vendor Posting Group',
                        ESM='Grupo contable proveedor',
                        FRC='Paramètre report fournisseur',
                        ENC='Vendor Posting Group';
            TableRelation = "Vendor Posting Group";
        }
        field(22;"Currency Code";Code[10])
        {
            CaptionML = ENU='Currency Code',
                        ESM='Cód. divisa',
                        FRC='Code devise',
                        ENC='Currency Code';
            TableRelation = Currency;

            
        }
        field(24;"Language Code";Code[10])
        {
            CaptionML = ENU='Language Code',
                        ESM='Cód. idioma',
                        FRC='Code langue',
                        ENC='Language Code';
            TableRelation = Language;
        }
        field(26;"Statistics Group";Integer)
        {
            CaptionML = ENU='Statistics Group',
                        ESM='Nº grupo estadístico',
                        FRC='Groupe statistiques',
                        ENC='Statistics Group';
        }
        field(27;"Payment Terms Code";Code[10])
        {
            CaptionML = ENU='Payment Terms Code',
                        ESM='Cód. términos pago',
                        FRC='Code modalités de paiement',
                        ENC='Payment Terms Code';
            TableRelation = "Payment Terms";

            
        }
        field(28;"Fin. Charge Terms Code";Code[10])
        {
            CaptionML = ENU='Fin. Charge Terms Code',
                        ESM='Cód. interés',
                        FRC='Code modalités frais financier',
                        ENC='Fin. Charge Terms Code';
            TableRelation = "Finance Charge Terms";
        }
        field(29;"Purchaser Code";Code[20])
        {
            CaptionML = ENU='Purchaser Code',
                        ESM='Cód. comprador',
                        FRC='Code acheteur',
                        ENC='Purchaser Code';
            TableRelation = "Salesperson/Purchaser";

            
        }
        field(30;"Shipment Method Code";Code[10])
        {
            CaptionML = ENU='Shipment Method Code',
                        ESM='Cód. método de envío',
                        FRC='Code méthode de livraison',
                        ENC='Shipment Method Code';
            TableRelation = "Shipment Method";
        }
        field(31;"Shipping Agent Code";Code[10])
        {
            CaptionML = ENU='Shipping Agent Code',
                        ESM='Cód. transportista',
                        FRC='Code agent de livraison',
                        ENC='Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(33;"Invoice Disc. Code";Code[20])
        {
            CaptionML = ENU='Invoice Disc. Code',
                        ESM='Cód. dto. factura',
                        FRC='Code escompte facture',
                        ENC='Invoice Disc. Code';
            TableRelation = Vendor;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(35;"Country/Region Code";Code[10])
        {
            CaptionML = ENU='Country/Region Code',
                        ESM='Cód. país/región',
                        FRC='Code pays/région',
                        ENC='Country/Region Code';
            TableRelation = "Country/Region";

            
        }
        field(38;Comment;Boolean)
        {
            CalcFormula = Exist("Comment Line" WHERE ("Table Name"=CONST(Vendor),
                                                      "No."=FIELD("No.")));
            CaptionML = ENU='Comment',
                        ESM='Comentario',
                        FRC='Commentaire',
                        ENC='Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39;Blocked;Option)
        {
            CaptionML = ENU='Blocked',
                        ESM='Bloqueado',
                        FRC='Bloqué',
                        ENC='Blocked';
            OptionCaptionML = ENU=' ,Payment,All',
                              ESM=' ,Pago,Todos',
                              FRC=' ,Paiement,Tout',
                              ENC=' ,Payment,All';
            OptionMembers = " ",Payment,All;

            trigger OnValidate();
            begin
                if (Blocked <> Blocked::All) and "Privacy Blocked" then
                  if GUIALLOWED then
                    if CONFIRM(ConfirmBlockedPrivacyBlockedQst) then
                      "Privacy Blocked" := false
                    else
                      ERROR('')
                  else
                    ERROR(CanNotChangeBlockedDueToPrivacyBlockedErr);
            end;
        }
        field(45;"Pay-to Vendor No.";Code[20])
        {
            CaptionML = ENU='Vendor No.',
                        ESM='Pago-a Nº proveedor',
                        FRC='N° fournisseur créancier',
                        ENC='Pay-to Vendor No.';
            TableRelation = Vendor;
        }
        field(46;Priority;Integer)
        {
            CaptionML = ENU='Priority',
                        ESM='Prioridad',
                        FRC='Priorité',
                        ENC='Priority';
        }
        field(47;"Payment Method Code";Code[10])
        {
            CaptionML = ENU='Payment Method Code',
                        ESM='Cód. forma pago',
                        FRC='Code mode de paiement',
                        ENC='Payment Method Code';
            TableRelation = "Payment Method";

            
        }
        field(53;"Last Modified Date Time";DateTime)
        {
            CaptionML = ENU='Last Modified Date Time',
                        ESM='Fecha y hora de última modificación',
                        FRC='Date-heure dernière modification',
                        ENC='Last Modified Date Time';
            Editable = false;
        }
        field(54;"Last Date Modified";Date)
        {
            CaptionML = ENU='Last Date Modified',
                        ESM='Fecha últ. modificación',
                        FRC='Date dernière modification',
                        ENC='Last Date Modified';
            Editable = false;
        }
        field(55;"Date Filter";Date)
        {
            CaptionML = ENU='Date Filter',
                        ESM='Filtro fecha',
                        FRC='Filtre date',
                        ENC='Date Filter';
            FieldClass = FlowFilter;
        }
        field(56;"Global Dimension 1 Filter";Code[20])
        {
            CaptionClass = '1,3,1';
            CaptionML = ENU='Global Dimension 1 Filter',
                        ESM='Filtro dimensión global 1',
                        FRC='Filtre dimension principale 1',
                        ENC='Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(1));
        }
        field(57;"Global Dimension 2 Filter";Code[20])
        {
            CaptionClass = '1,3,2';
            CaptionML = ENU='Global Dimension 2 Filter',
                        ESM='Filtro dimensión global  2',
                        FRC='Filtre dimension principale 2',
                        ENC='Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No."=CONST(2));
        }
        field(58;Balance;Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Balance',
                        ESM='Saldo',
                        FRC='Solde',
                        ENC='Balance';
            Editable = false;
            FieldClass = FlowField;
        }
        field(59;"Balance (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Balance ($)',
                        ESM='Saldo ($)',
                        FRC='Solde ($)',
                        ENC='Balance ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60;"Net Change";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Posting Date"=FIELD("Date Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Net Change',
                        ESM='Saldo periodo',
                        FRC='Variation nette',
                        ENC='Net Change';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61;"Net Change (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Net Change ($)',
                        ESM='Saldo periodo ($)',
                        FRC='Variation nette ($)',
                        ENC='Net Change ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62;"Purchases (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Vendor Ledger Entry"."Purchase (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                             "Global Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                             "Posting Date"=FIELD("Date Filter"),
                                                                             "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Purchases ($)',
                        ESM='Compras ($)',
                        FRC='Achats ($)',
                        ENC='Purchases ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(64;"Inv. Discounts (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Vendor Ledger Entry"."Inv. Discount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                  "Global Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Global Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Inv. Discounts ($)',
                        ESM='Dtos. factura ($)',
                        FRC='Escomptes facture ($)',
                        ENC='Inv. Discounts ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(65;"Pmt. Discounts (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                  "Entry Type"=FILTER("Payment Discount"..'"Payment Discount (VAT Adjustment)"'),
                                                                                  "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Pmt. Discounts ($)',
                        ESM='Dto. P.P. ($)',
                        FRC='Escomptes de paiement ($)',
                        ENC='Pmt. Discounts ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(66;"Balance Due";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Vendor No."=FIELD("No."),
                                                                           "Initial Entry Due Date"=FIELD(UPPERLIMIT("Date Filter")),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Balance Due',
                        ESM='Saldo vencido',
                        FRC='Solde dû',
                        ENC='Balance Due';
            Editable = false;
            FieldClass = FlowField;
        }
        field(67;"Balance Due (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Due Date"=FIELD(UPPERLIMIT("Date Filter")),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Balance Due ($)',
                        ESM='Saldo vencido ($)',
                        FRC='Solde dû ($)',
                        ENC='Balance Due ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(69;Payments;Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST(Payment),
                                                                          "Entry Type"=CONST("Initial Entry"),
                                                                          "Vendor No."=FIELD("No."),
                                                                          "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                          "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                          "Posting Date"=FIELD("Date Filter"),
                                                                          "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Payments',
                        ESM='Pagos',
                        FRC='Paiements',
                        ENC='Payments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70;"Invoice Amounts";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST(Invoice),
                                                                           "Entry Type"=CONST("Initial Entry"),
                                                                           "Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Posting Date"=FIELD("Date Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Invoice Amounts',
                        ESM='Facturado',
                        FRC='Montants facture',
                        ENC='Invoice Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71;"Cr. Memo Amounts";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST("Credit Memo"),
                                                                          "Entry Type"=CONST("Initial Entry"),
                                                                          "Vendor No."=FIELD("No."),
                                                                          "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                          "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                          "Posting Date"=FIELD("Date Filter"),
                                                                          "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Cr. Memo Amounts',
                        ESM='Imp. de notas de crédito',
                        FRC='Montants note de crédit',
                        ENC='Cr. Memo Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72;"Finance Charge Memo Amounts";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST("Finance Charge Memo"),
                                                                           "Entry Type"=CONST("Initial Entry"),
                                                                           "Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Posting Date"=FIELD("Date Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Finance Charge Memo Amounts',
                        ESM='Importes doc. interés',
                        FRC='Montants note frais financiers',
                        ENC='Finance Charge Memo Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74;"Payments (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST(Payment),
                                                                                  "Entry Type"=CONST("Initial Entry"),
                                                                                  "Vendor No."=FIELD("No."),
                                                                                  "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Payments ($)',
                        ESM='Pagos ($)',
                        FRC='Paiements ($)',
                        ENC='Payments ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(75;"Inv. Amounts (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST(Invoice),
                                                                                   "Entry Type"=CONST("Initial Entry"),
                                                                                   "Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Inv. Amounts ($)',
                        ESM='Facturado ($)',
                        FRC='Montants de la facture ($)',
                        ENC='Inv. Amounts ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76;"Cr. Memo Amounts (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST("Credit Memo"),
                                                                                  "Entry Type"=CONST("Initial Entry"),
                                                                                  "Vendor No."=FIELD("No."),
                                                                                  "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Cr. Memo Amounts ($)',
                        ESM='Notas de Crédito ($)',
                        FRC='Montants de notes de crédit ($)',
                        ENC='Cr. Memo Amounts ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77;"Fin. Charge Memo Amounts (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST("Finance Charge Memo"),
                                                                                   "Entry Type"=CONST("Initial Entry"),
                                                                                   "Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Fin. Charge Memo Amounts ($)',
                        ESM='Importes doc. interés ($)',
                        FRC='Montants de note de frais fin. ($)',
                        ENC='Fin. Charge Memo Amounts ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78;"Outstanding Orders";Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Outstanding Amount" WHERE ("Document Type"=CONST(Order),
                                                                          "Pay-to Vendor No."=FIELD("No."),
                                                                          "Shortcut Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                          "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Outstanding Orders',
                        ESM='Importe pedidos pendientes',
                        FRC='Commandes en suspens',
                        ENC='Outstanding Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(79;"Amt. Rcd. Not Invoiced";Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Amt. Rcd. Not Invoiced" WHERE ("Document Type"=CONST(Order),
                                                                              "Pay-to Vendor No."=FIELD("No."),
                                                                              "Shortcut Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                              "Shortcut Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                              "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Amt. Rcd. Not Invoiced',
                        ESM='Importe recibido no facturado',
                        FRC='Montant reçu non facturé',
                        ENC='Amt. Rcd. Not Invoiced';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80;"Application Method";Option)
        {
            CaptionML = ENU='Application Method',
                        ESM='Método liquidación',
                        FRC='Méthode d''affectation',
                        ENC='Application Method';
            OptionCaptionML = ENU='Manual,Apply to Oldest',
                              ESM='Manual,Por antigüedad',
                              FRC='Manuel,Affecter à la plus vieille',
                              ENC='Manual,Apply to Oldest';
            OptionMembers = Manual,"Apply to Oldest";
        }
        field(82;"Prices Including VAT";Boolean)
        {
            CaptionML = ENU='Prices Including Tax',
                        ESM='Precios IVA incluido',
                        FRC='Prix incluant la TVA',
                        ENC='Prices Including Tax';

            trigger OnValidate();
            var
                PurchPrice : Record "Purchase Price";
                Item : Record Item;
                VATPostingSetup : Record "VAT Posting Setup";
                Currency : Record Currency;
            begin
                PurchPrice.SETCURRENTKEY("Vendor No.");
                PurchPrice.SETRANGE("Vendor No.","No.");
                if PurchPrice.FIND('-') then begin
                  if VATPostingSetup.GET('','') then;
                  if CONFIRM(
                       STRSUBSTNO(
                         Text002,
                         FIELDCAPTION("Prices Including VAT"),"Prices Including VAT",PurchPrice.TABLECAPTION),true)
                  then
                    repeat
                      if PurchPrice."Item No." <> Item."No." then
                        Item.GET(PurchPrice."Item No.");
                      if ("VAT Bus. Posting Group" <> VATPostingSetup."VAT Bus. Posting Group") or
                         (Item."VAT Prod. Posting Group" <> VATPostingSetup."VAT Prod. Posting Group")
                      then
                        VATPostingSetup.GET("VAT Bus. Posting Group",Item."VAT Prod. Posting Group");
                      if PurchPrice."Currency Code" = '' then
                        Currency.InitRoundingPrecision
                      else
                        if PurchPrice."Currency Code" <> Currency.Code then
                          Currency.GET(PurchPrice."Currency Code");
                      if VATPostingSetup."VAT %" <> 0 then begin
                        if "Prices Including VAT" then
                          PurchPrice."Direct Unit Cost" :=
                            ROUND(
                              PurchPrice."Direct Unit Cost" * (1 + VATPostingSetup."VAT %" / 100),
                              Currency."Unit-Amount Rounding Precision")
                        else
                          PurchPrice."Direct Unit Cost" :=
                            ROUND(
                              PurchPrice."Direct Unit Cost" / (1 + VATPostingSetup."VAT %" / 100),
                              Currency."Unit-Amount Rounding Precision");
                        PurchPrice.MODIFY;
                      end;
                    until PurchPrice.NEXT = 0;
                end;
            end;
        }
        field(84;"Fax No.";Text[30])
        {
            CaptionML = ENU='Fax No.',
                        ESM='Nº fax',
                        FRC='N° télécopieur',
                        ENC='Fax No.';
        }
        field(85;"Telex Answer Back";Text[20])
        {
            CaptionML = ENU='Telex Answer Back',
                        ESM='Nº télex respuesta',
                        FRC='Télex retour',
                        ENC='Telex Answer Back';
        }
        field(86;"VAT Registration No.";Text[20])
        {
            CaptionML = ENU='Tax Registration No.',
                        ESM='RFC/Curp',
                        FRC='N° identification de la TPS/TVH',
                        ENC='GST/HST Registration No.';

            
        }
        field(88;"Gen. Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='Gen. Bus. Posting Group',
                        ESM='Grupo contable negocio',
                        FRC='Groupe de report de marché',
                        ENC='Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";

            trigger OnValidate();
            begin
                if xRec."Gen. Bus. Posting Group" <> "Gen. Bus. Posting Group" then
                  if GenBusPostingGrp.ValidateVatBusPostingGroup(GenBusPostingGrp,"Gen. Bus. Posting Group") then
                    VALIDATE("VAT Bus. Posting Group",GenBusPostingGrp."Def. VAT Bus. Posting Group");
            end;
        }
        field(89;Picture;BLOB)
        {
            CaptionML = ENU='Picture',
                        ESM='Foto',
                        FRC='illustration',
                        ENC='Picture';
            SubType = Bitmap;
        }
        field(90;GLN;Code[13])
        {
            CaptionML = ENU='GLN',
                        ESM='GLN',
                        FRC='GLN',
                        ENC='GLN';
            Numeric = true;

            trigger OnValidate();
            var
                GLNCalculator : Codeunit "GLN Calculator";
            begin
                if GLN <> '' then
                  GLNCalculator.AssertValidCheckDigit13(GLN);
            end;
        }
        field(91;"Post Code";Code[20])
        {
            CaptionML = ENU='ZIP Code',
                        ESM='C.P.',
                        FRC='Code postal',
                        ENC='Postal/ZIP Code';
            TableRelation = IF ("Country/Region Code"=CONST('')) "Post Code"
                            ELSE IF ("Country/Region Code"=FILTER(<>'')) "Post Code" WHERE ("Country/Region Code"=FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;

            trigger OnValidate();
            begin
                PostCode.ValidatePostCode(City,"Post Code",County,"Country/Region Code",(CurrFieldNo <> 0) and GUIALLOWED);
            end;
        }
        field(92;County;Text[30])
        {
            CaptionML = ENU='State',
                        ESM='Provincia',
                        FRC='Comté',
                        ENC='Province/State';
        }
        field(97;"Debit Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Debit Amount" WHERE ("Vendor No."=FIELD("No."),
                                                                                  "Entry Type"=FILTER(<>Application),
                                                                                  "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Debit Amount',
                        ESM='Importe debe',
                        FRC='Montant de débit',
                        ENC='Debit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(98;"Credit Amount";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Credit Amount" WHERE ("Vendor No."=FIELD("No."),
                                                                                   "Entry Type"=FILTER(<>Application),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Credit Amount',
                        ESM='Importe haber',
                        FRC='Montant de crédit',
                        ENC='Credit Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99;"Debit Amount (LCY)";Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Debit Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                        "Entry Type"=FILTER(<>Application),
                                                                                        "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                        "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                        "Posting Date"=FIELD("Date Filter"),
                                                                                        "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Debit Amount ($)',
                        ESM='Importe debe ($)',
                        FRC='Montant de débit ($)',
                        ENC='Debit Amount ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100;"Credit Amount (LCY)";Decimal)
        {
            AutoFormatType = 1;
            BlankZero = true;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Credit Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                         "Entry Type"=FILTER(<>Application),
                                                                                         "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                         "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                         "Posting Date"=FIELD("Date Filter"),
                                                                                         "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Credit Amount ($)',
                        ESM='Importe haber ($)',
                        FRC='Montant de crédit ($)',
                        ENC='Credit Amount ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(102;"E-Mail";Text[80])
        {
            CaptionML = ENU='Email',
                        ESM='Correo electrónico',
                        FRC='Courriel',
                        ENC='Email';
            ExtendedDatatype = EMail;

            trigger OnValidate();
            var
                MailManagement : Codeunit "Mail Management";
            begin
                MailManagement.ValidateEmailAddressField("E-Mail");
            end;
        }
        field(103;"Home Page";Text[80])
        {
            CaptionML = ENU='Home Page',
                        ESM='Página principal',
                        FRC='Page d''accueil',
                        ENC='Home Page';
            ExtendedDatatype = URL;
        }
        field(104;"Reminder Amounts";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST(Reminder),
                                                                           "Entry Type"=CONST("Initial Entry"),
                                                                           "Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Posting Date"=FIELD("Date Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Reminder Amounts',
                        ESM='Importe recordatorio',
                        FRC='Montants rappel',
                        ENC='Reminder Amounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(105;"Reminder Amounts (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST(Reminder),
                                                                                   "Entry Type"=CONST("Initial Entry"),
                                                                                   "Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Reminder Amounts ($)',
                        ESM='Importe recordatorio ($)',
                        FRC='Montants rappel ($)',
                        ENC='Reminder Amounts ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107;"No. Series";Code[20])
        {
            CaptionML = ENU='No. Series',
                        ESM='Nos. serie',
                        FRC='Séries de n°',
                        ENC='No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(108;"Tax Area Code";Code[20])
        {
            CaptionML = ENU='Tax Area Code',
                        ESM='Cód. área impuesto',
                        FRC='Code de région fiscale',
                        ENC='Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(109;"Tax Liable";Boolean)
        {
            CaptionML = ENU='Tax Liable',
                        ESM='Sujeto a impuesto',
                        FRC='Imposable',
                        ENC='Tax Liable';
        }
        field(110;"VAT Bus. Posting Group";Code[20])
        {
            CaptionML = ENU='Tax Bus. Posting Group',
                        ESM='Grupo registro IVA neg.',
                        FRC='Groupe de reports de taxe sur la valeur ajoutée de l''entreprise',
                        ENC='Tax Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(111;"Currency Filter";Code[10])
        {
            CaptionML = ENU='Currency Filter',
                        ESM='Filtro divisa',
                        FRC='Filtre devise',
                        ENC='Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(113;"Outstanding Orders (LCY)";Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Outstanding Amount (LCY)" WHERE ("Document Type"=CONST(Order),
                                                                                "Pay-to Vendor No."=FIELD("No."),
                                                                                "Shortcut Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                                "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Outstanding Orders ($)',
                        ESM='Pedidos pendientes ($)',
                        FRC='Commandes en suspens ($)',
                        ENC='Outstanding Orders ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(114;"Amt. Rcd. Not Invoiced (LCY)";Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Amt. Rcd. Not Invoiced (LCY)" WHERE ("Document Type"=CONST(Order),
                                                                                    "Pay-to Vendor No."=FIELD("No."),
                                                                                    "Shortcut Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                                    "Shortcut Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                                    "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Amt. Rcd. Not Invoiced ($)',
                        ESM='Imp. recibido no factur. ($)',
                        FRC='Montant reçu non facturé ($)',
                        ENC='Amt. Rcd. Not Invoiced ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(116;"Block Payment Tolerance";Boolean)
        {
            CaptionML = ENU='Block Payment Tolerance',
                        ESM='Bloquear tolerancia pagos',
                        FRC='Tolér. vers. en fonds bloqués',
                        ENC='Block Payment Tolerance';
        }
        field(117;"Pmt. Disc. Tolerance (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                  "Entry Type"=FILTER("Payment Discount Tolerance"|'"Payment Discount Tolerance (VAT Adjustment)"'|'"Payment Discount Tolerance (VAT Excl.)"'),
                                                                                  "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Pmt. Disc. Tolerance ($)',
                        ESM='Tolerancia dto. P.P ($)',
                        FRC='Validation tolérance d''escompte de paiement $',
                        ENC='Pmt. Disc. Tolerance ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(118;"Pmt. Tolerance (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                  "Entry Type"=FILTER("Payment Tolerance"|'"Payment Tolerance (VAT Adjustment)"'|'"Payment Tolerance (VAT Excl.)"'),
                                                                                  "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                  "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                  "Posting Date"=FIELD("Date Filter"),
                                                                                  "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Pmt. Tolerance ($)',
                        ESM='Tolerancia pagos ($)',
                        FRC='Tolérance de règlement $',
                        ENC='Pmt. Tolerance ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(119;"IC Partner Code";Code[20])
        {
            CaptionML = ENU='IC Partner Code',
                        ESM='Código socio IC',
                        FRC='Code de partenaire IC',
                        ENC='IC Partner Code';
            TableRelation = "IC Partner";

            trigger OnValidate();
            var
                VendLedgEntry : Record "Vendor Ledger Entry";
                AccountingPeriod : Record "Accounting Period";
                ICPartner : Record "IC Partner";
            begin
                if xRec."IC Partner Code" <> "IC Partner Code" then begin
                  if not VendLedgEntry.SETCURRENTKEY("Vendor No.",Open) then
                    VendLedgEntry.SETCURRENTKEY("Vendor No.");
                  VendLedgEntry.SETRANGE("Vendor No.","No.");
                  VendLedgEntry.SETRANGE(Open,true);
                  if VendLedgEntry.FINDLAST then
                    ERROR(Text010,FIELDCAPTION("IC Partner Code"),TABLECAPTION);

                  VendLedgEntry.RESET;
                  VendLedgEntry.SETCURRENTKEY("Vendor No.","Posting Date");
                  VendLedgEntry.SETRANGE("Vendor No.","No.");
                  AccountingPeriod.SETRANGE(Closed,false);
                  if AccountingPeriod.FINDFIRST then begin
                    VendLedgEntry.SETFILTER("Posting Date",'>=%1',AccountingPeriod."Starting Date");
                    if VendLedgEntry.FINDFIRST then
                      if not CONFIRM(Text009,false,TABLECAPTION) then
                        "IC Partner Code" := xRec."IC Partner Code";
                  end;
                end;

                if "IC Partner Code" <> '' then begin
                  ICPartner.GET("IC Partner Code");
                  if (ICPartner."Vendor No." <> '') and (ICPartner."Vendor No." <> "No.") then
                    ERROR(Text008,FIELDCAPTION("IC Partner Code"),"IC Partner Code",TABLECAPTION,ICPartner."Vendor No.");
                  ICPartner."Vendor No." := "No.";
                  ICPartner.MODIFY;
                end;

                if (xRec."IC Partner Code" <> "IC Partner Code") and ICPartner.GET(xRec."IC Partner Code") then begin
                  ICPartner."Vendor No." := '';
                  ICPartner.MODIFY;
                end;
            end;
        }
        field(120;Refunds;Decimal)
        {
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST(Refund),
                                                                           "Entry Type"=CONST("Initial Entry"),
                                                                           "Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Posting Date"=FIELD("Date Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Refunds',
                        ESM='Reembolsos',
                        FRC='Remboursements',
                        ENC='Refunds';
            FieldClass = FlowField;
        }
        field(121;"Refunds (LCY)";Decimal)
        {
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST(Refund),
                                                                                   "Entry Type"=CONST("Initial Entry"),
                                                                                   "Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Refunds ($)',
                        ESM='Reembolsos ($)',
                        FRC='Remboursements ($)',
                        ENC='Refunds ($)';
            FieldClass = FlowField;
        }
        field(122;"Other Amounts";Decimal)
        {
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Initial Document Type"=CONST(" "),
                                                                           "Entry Type"=CONST("Initial Entry"),
                                                                           "Vendor No."=FIELD("No."),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Posting Date"=FIELD("Date Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Other Amounts',
                        ESM='Otros importes',
                        FRC='Autres montants',
                        ENC='Other Amounts';
            FieldClass = FlowField;
        }
        field(123;"Other Amounts (LCY)";Decimal)
        {
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Initial Document Type"=CONST(" "),
                                                                                   "Entry Type"=CONST("Initial Entry"),
                                                                                   "Vendor No."=FIELD("No."),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Posting Date"=FIELD("Date Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Other Amounts ($)',
                        ESM='Otros importes ($)',
                        FRC='Autres montants ($)',
                        ENC='Other Amounts ($)';
            FieldClass = FlowField;
        }
        field(124;"Prepayment %";Decimal)
        {
            CaptionML = ENU='Prepayment %',
                        ESM='% anticipo',
                        FRC='% paiement anticipé',
                        ENC='Prepayment %';
            DecimalPlaces = 0:5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(125;"Outstanding Invoices";Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Outstanding Amount" WHERE ("Document Type"=CONST(Invoice),
                                                                          "Pay-to Vendor No."=FIELD("No."),
                                                                          "Shortcut Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                          "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Outstanding Invoices',
                        ESM='Facturas pendientes',
                        FRC='Factures en suspens',
                        ENC='Outstanding Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(126;"Outstanding Invoices (LCY)";Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            AutoFormatType = 1;
            CalcFormula = Sum("Purchase Line"."Outstanding Amount (LCY)" WHERE ("Document Type"=CONST(Invoice),
                                                                                "Pay-to Vendor No."=FIELD("No."),
                                                                                "Shortcut Dimension 1 Code"=FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code"=FIELD("Global Dimension 2 Filter"),
                                                                                "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Outstanding Invoices ($)',
                        ESM='Facturas pendientes ($)',
                        FRC='Factures en suspens ($)',
                        ENC='Outstanding Invoices ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130;"Pay-to No. Of Archived Doc.";Integer)
        {
            CalcFormula = Count("Purchase Header Archive" WHERE ("Document Type"=CONST(Order),
                                                                 "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. Of Archived Doc.',
                        ESM='Pago a-Nº de doc. archivado',
                        FRC='N° de "payé à" des doc. archivés',
                        ENC='No. Of Archived Doc.';
            FieldClass = FlowField;
        }
        field(131;"Buy-from No. Of Archived Doc.";Integer)
        {
            CalcFormula = Count("Purchase Header Archive" WHERE ("Document Type"=CONST(Order),
                                                                 "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='Buy-from No. Of Archived Doc.',
                        ESM='Compra a-Nº de doc. archivado',
                        FRC='Achat - Nbre de doc. archivés',
                        ENC='Buy-from No. Of Archived Doc.';
            FieldClass = FlowField;
        }
        field(132;"Partner Type";Option)
        {
            CaptionML = ENU='Partner Type',
                        ESM='Tipo socio',
                        FRC='Type partenaire',
                        ENC='Partner Type';
            OptionCaptionML = ENU=' ,Company,Person',
                              ESM=' ,Empresa,Persona',
                              FRC=' ,Compagnie,Personne',
                              ENC=' ,Company,Person';
            OptionMembers = " ",Company,Person;
        }
        field(140;Image;Media)
        {
            CaptionML = ENU='Image',
                        ESM='Imagen',
                        FRC='Image',
                        ENC='Image';
            ExtendedDatatype = Person;
        }
        field(150;"Privacy Blocked";Boolean)
        {
            CaptionML = ENU='Privacy Blocked',
                        ESM='Privacidad bloqueada',
                        FRC='Confidentialité bloquée',
                        ENC='Privacy Blocked';

            trigger OnValidate();
            begin
                if "Privacy Blocked" then
                  Blocked := Blocked::All
                else
                  Blocked := Blocked::" ";
            end;
        }
        field(170;"Creditor No.";Code[20])
        {
            CaptionML = ENU='Creditor No.',
                        ESM='Nº acreedor',
                        FRC='N° créditeur',
                        ENC='Creditor No.';
            Numeric = true;
        }
        field(288;"Preferred Bank Account Code";Code[20])
        {
            CaptionML = ENU='Preferred Bank Account Code',
                        ESM='Código de cuenta bancaria preferida',
                        FRC='Code de compte bancaire préféré',
                        ENC='Preferred Bank Account Code';
            TableRelation = "Vendor Bank Account".Code WHERE ("Vendor No."=FIELD("No."));
        }
        field(840;"Cash Flow Payment Terms Code";Code[10])
        {
            CaptionML = ENU='Cash Flow Payment Terms Code',
                        ESM='Cód. términos de pago de flujo de caja',
                        FRC='Code modalités de paiement de trésorerie',
                        ENC='Cash Flow Payment Terms Code';
            TableRelation = "Payment Terms";
        }
        field(5049;"Primary Contact No.";Code[20])
        {
            CaptionML = ENU='Primary Contact No.',
                        ESM='Nº contacto principal',
                        FRC='N° contact principal',
                        ENC='Primary Contact No.';
            TableRelation = Contact;

            trigger OnLookup();
            var
                Cont : Record Contact;
                ContBusRel : Record "Contact Business Relation";
                TempVend : Record Vendor temporary;
            begin
                ContBusRel.SETCURRENTKEY("Link to Table","No.");
                ContBusRel.SETRANGE("Link to Table",ContBusRel."Link to Table"::Vendor);
                ContBusRel.SETRANGE("No.","No.");
                if ContBusRel.FINDFIRST then
                  Cont.SETRANGE("Company No.",ContBusRel."Contact No.")
                else
                  Cont.SETRANGE("No.",'');

                if "Primary Contact No." <> '' then
                  if Cont.GET("Primary Contact No.") then ;
                if PAGE.RUNMODAL(0,Cont) = ACTION::LookupOK then begin
                  TempVend.COPY(Rec);
                  FIND;
                  TRANSFERFIELDS(TempVend,false);
                  VALIDATE("Primary Contact No.",Cont."No.");
                end;
            end;

            trigger OnValidate();
            var
                Cont : Record Contact;
                ContBusRel : Record "Contact Business Relation";
            begin
                Contact := '';
                if "Primary Contact No." <> '' then begin
                  Cont.GET("Primary Contact No.");

                  ContBusRel.SETCURRENTKEY("Link to Table","No.");
                  ContBusRel.SETRANGE("Link to Table",ContBusRel."Link to Table"::Vendor);
                  ContBusRel.SETRANGE("No.","No.");
                  ContBusRel.FINDFIRST;

                  if Cont."Company No." <> ContBusRel."Contact No." then
                    ERROR(Text004,Cont."No.",Cont.Name,"No.",Name);

                  if Cont.Type = Cont.Type::Person then
                    Contact := Cont.Name;

                  if Cont."Phone No." <> '' then
                    "Phone No." := Cont."Phone No.";
                  if Cont."E-Mail" <> '' then
                    "E-Mail" := Cont."E-Mail";
                end;
            end;
        }
        field(5700;"Responsibility Center";Code[10])
        {
            CaptionML = ENU='Responsibility Center',
                        ESM='Centro responsabilidad',
                        FRC='Centre de gestion',
                        ENC='Responsibility Centre';
            TableRelation = "Responsibility Center";
        }
        field(5701;"Location Code";Code[10])
        {
            CaptionML = ENU='Location Code',
                        ESM='Cód. almacén',
                        FRC='Code d''emplacement',
                        ENC='Location Code';
            TableRelation = Location WHERE ("Use As In-Transit"=CONST(false));
        }
        field(5790;"Lead Time Calculation";DateFormula)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            CaptionML = ENU='Lead Time Calculation',
                        ESM='Plazo entrega (días)',
                        FRC='Délai de réapprovisionnement',
                        ENC='Lead Time Calculation';

            trigger OnValidate();
            begin
                //LeadTimeMgt.CheckLeadTimeIsNotNegative("Lead Time Calculation");
            end;
        }
        field(7177;"No. of Pstd. Receipts";Integer)
        {
            CalcFormula = Count("Purch. Rcpt. Header" WHERE ("Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Pstd. Receipts',
                        ESM='Nº históricos recepciones',
                        FRC='Nombre de réceptions reportées',
                        ENC='No. of Pstd. Receipts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7178;"No. of Pstd. Invoices";Integer)
        {
            CalcFormula = Count("Purch. Inv. Header" WHERE ("Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Pstd. Invoices',
                        ESM='Nº de facturas registradas',
                        FRC='Nombre de factures reportées',
                        ENC='No. of Pstd. Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7179;"No. of Pstd. Return Shipments";Integer)
        {
            CalcFormula = Count("Return Shipment Header" WHERE ("Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Pstd. Return Shipments',
                        ESM='Nº envíos devolución reg.',
                        FRC='Nombre de livraisons de retour reportées',
                        ENC='No. of Pstd. Return Shipments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7180;"No. of Pstd. Credit Memos";Integer)
        {
            CalcFormula = Count("Purch. Cr. Memo Hdr." WHERE ("Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Pstd. Credit Memos',
                        ESM='Nº de notas de crédito registradas',
                        FRC='Nbre notes de crédit reportées',
                        ENC='No. of Pstd. Credit Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7181;"Pay-to No. of Orders";Integer)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST(Order),
                                                         "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Orders',
                        ESM='Pago a-Nº de pedidos',
                        FRC='N° de "payé à" des commandes',
                        ENC='Pay-to No. of Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7182;"Pay-to No. of Invoices";Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST(Invoice),
                                                         "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Invoices',
                        ESM='Pago a-Nº de facturas',
                        FRC='N° de "payé à" des factures',
                        ENC='Pay-to No. of Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7183;"Pay-to No. of Return Orders";Integer)
        {
            AccessByPermission = TableData "Return Shipment Header"=R;
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST("Return Order"),
                                                         "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Return Orders',
                        ESM='Pago a-Nº de devoluciones',
                        FRC='N° de "payé à" des retours',
                        ENC='Pay-to No. of Return Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7184;"Pay-to No. of Credit Memos";Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST("Credit Memo"),
                                                         "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Credit Memos',
                        ESM='Pago a-Nº de notas de Crédito',
                        FRC='N° de "payé à" des notes de crédit',
                        ENC='Pay-to No. of Credit Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7185;"Pay-to No. of Pstd. Receipts";Integer)
        {
            CalcFormula = Count("Purch. Rcpt. Header" WHERE ("Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Pstd. Receipts',
                        ESM='Pago a-Nº históricos recepciones',
                        FRC='N° de "payé à" des réceptions reportées',
                        ENC='Pay-to No. of Pstd. Receipts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7186;"Pay-to No. of Pstd. Invoices";Integer)
        {
            CalcFormula = Count("Purch. Inv. Header" WHERE ("Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Pstd. Invoices',
                        ESM='Pago a-Nº de facturas registradas',
                        FRC='N° de "payé à" des factures reportées',
                        ENC='Pay-to No. of Pstd. Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7187;"Pay-to No. of Pstd. Return S.";Integer)
        {
            CalcFormula = Count("Return Shipment Header" WHERE ("Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Pstd. Return S.',
                        ESM='Pago a-Nº de envíos devolución reg.',
                        FRC='N° de "payé à" des livraisons retour reportées',
                        ENC='No. of Pstd. Return S.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7188;"Pay-to No. of Pstd. Cr. Memos";Integer)
        {
            CalcFormula = Count("Purch. Cr. Memo Hdr." WHERE ("Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Pstd. Cr. Memos',
                        ESM='Pago a-Nº de notas de crédito registradas',
                        FRC='N° de "payé à" des notes de crédit reportées',
                        ENC='No. of Pstd. Cr. Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7189;"No. of Quotes";Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST(Quote),
                                                         "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Quotes',
                        ESM='Nº de cotizaciones',
                        FRC='Nombre de devis',
                        ENC='No. of Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7190;"No. of Blanket Orders";Integer)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST("Blanket Order"),
                                                         "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Blanket Orders',
                        ESM='Nº de pedidos abiertos',
                        FRC='Nombre de commandes permanentes',
                        ENC='No. of Blanket Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7191;"No. of Orders";Integer)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST(Order),
                                                         "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Orders',
                        ESM='Nº de pedidos',
                        FRC='Nombre de commandes',
                        ENC='No. of Orders';
            FieldClass = FlowField;
        }
        field(7192;"No. of Invoices";Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST(Invoice),
                                                         "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Invoices',
                        ESM='Nº de facturas',
                        FRC='Nombre de factures',
                        ENC='No. of Invoices';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7193;"No. of Return Orders";Integer)
        {
            AccessByPermission = TableData "Return Shipment Header"=R;
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST("Return Order"),
                                                         "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Return Orders',
                        ESM='Nº de devoluciones',
                        FRC='Nombre de commandes de retour',
                        ENC='No. of Return Orders';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7194;"No. of Credit Memos";Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST("Credit Memo"),
                                                         "Buy-from Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Credit Memos',
                        ESM='Nº de notas de Crédito',
                        FRC='Nombre de notes de crédit',
                        ENC='No. of Credit Memos';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7195;"No. of Order Addresses";Integer)
        {
            CalcFormula = Count("Order Address" WHERE ("Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Order Addresses',
                        ESM='Nº de direcciones de pedido',
                        FRC='Nbre d''adresses de commande',
                        ENC='No. of Order Addresses';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7196;"Pay-to No. of Quotes";Integer)
        {
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST(Quote),
                                                         "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Quotes',
                        ESM='Pago a-Nº de cotizaciones',
                        FRC='N° de "payé à" des devis',
                        ENC='Pay-to No. of Quotes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7197;"Pay-to No. of Blanket Orders";Integer)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header"=R;
            CalcFormula = Count("Purchase Header" WHERE ("Document Type"=CONST("Blanket Order"),
                                                         "Pay-to Vendor No."=FIELD("No.")));
            CaptionML = ENU='Pay-to No. of Blanket Orders',
                        ESM='Pago a-Nº de pedidos abiertos',
                        FRC='N° de "payé à" des Commandes Ouvertes',
                        ENC='Pay-to No. of Blanket Orders';
            FieldClass = FlowField;
        }
        field(7198;"No. of Incoming Documents";Integer)
        {
            CalcFormula = Count("Incoming Document" WHERE ("Vendor No."=FIELD("No.")));
            CaptionML = ENU='No. of Incoming Documents',
                        ESM='Nº de documentos entrantes',
                        FRC='Nbre de documents entrants',
                        ENC='No. of Incoming Documents';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7600;"Base Calendar Code";Code[10])
        {
            CaptionML = ENU='Base Calendar Code',
                        ESM='Código calendario base',
                        FRC='Code calendrier principal',
                        ENC='Base Calendar Code';
            TableRelation = "Base Calendar";
        }
        field(7601;"Document Sending Profile";Code[20])
        {
            CaptionML = ENU='Document Sending Profile',
                        ESM='Perfil de envío de documentos',
                        FRC='Profil d''envoi de documents',
                        ENC='Document Sending Profile';
            TableRelation = "Document Sending Profile".Code;
        }
        field(7602;"Validate EU Vat Reg. No.";Boolean)
        {
            CaptionML = ENU='Validate EU Tax Reg. No.',
                        ESM='Validar RFC/Curp de la UE',
                        FRC='Valider N° d''inscription TPS/TVH UE',
                        ENC='Validate EU GST/HST Reg. No.';
        }
        field(8000;Id;Guid)
        {
            CaptionML = ENU='Id',
                        ESM='Id',
                        FRC='Code ',
                        ENC='Id';
        }
        field(8001;"Currency Id";Guid)
        {
            CaptionML = ENU='Currency Id',
                        ESM='Id. de divisa',
                        FRC='ID Devise',
                        ENC='Currency Id';
            TableRelation = Currency.Id;

           
        }
        field(8002;"Payment Terms Id";Guid)
        {
            CaptionML = ENU='Payment Terms Id',
                        ESM='Id. de condiciones de pago',
                        FRC='ID Conditions de paiement',
                        ENC='Payment Terms Id';
            TableRelation = "Payment Terms".Id;

            
        }
        field(8003;"Payment Method Id";Guid)
        {
            CaptionML = ENU='Payment Method Id',
                        ESM='Id. de forma pago',
                        FRC='Code mode de règlement',
                        ENC='Payment Method Id';
            TableRelation = "Payment Method".Id;

         
        }
        field(10004;"UPS Zone";Code[2])
        {
            CaptionML = ENU='UPS Zone',
                        ESM='Zona UPS',
                        FRC='Zone UPS',
                        ENC='UPS Zone';
        }
        field(10016;"Federal ID No.";Text[30])
        {
            CaptionML = ENU='Federal ID No.',
                        ESM='CURP',
                        FRC='N° d''identification fédéral',
                        ENC='Federal BIN No.';
        }
        field(10017;"Bank Communication";Option)
        {
            CaptionML = ENU='Bank Communication',
                        ESM='Comunicación banco',
                        FRC='Communication avec la banque',
                        ENC='Bank Communication';
            OptionCaptionML = ENU='E English,F French,S Spanish',
                              ESM='I Inglés,F Francés,E Español',
                              FRC='E Anglais,F Français,S Espagnol',
                              ENC='E English,F French,S Spanish';
            OptionMembers = "E English","F French","S Spanish";
        }
        field(10018;"Check Date Format";Option)
        {
            CaptionML = ENU='Check Date Format',
                        ESM='Comprobar formato fecha',
                        FRC='Vérifier format date',
                        ENC='Cheque Date Format';
            OptionCaptionML = ENU=' ,MM DD YYYY,DD MM YYYY,YYYY MM DD',
                              ESM=' ,MM DD AAAA,DD MM AAAA,AAAA MM DD',
                              FRC=' ,MM DD YYYY,DD MM YYYY,YYYY MM DD',
                              ENC=' ,MM DD YYYY,DD MM YYYY,YYYY MM DD';
            OptionMembers = " ","MM DD YYYY","DD MM YYYY","YYYY MM DD";
        }
        field(10019;"Check Date Separator";Option)
        {
            CaptionML = ENU='Check Date Separator',
                        ESM='Comprobar separador fecha',
                        FRC='Vérifier séparateur de dates',
                        ENC='Cheque Date Separator';
            OptionCaptionML = ENU=' ,-,.,/',
                              ESM=' ,-,.,/',
                              FRC=' ,-,.,/',
                              ENC=' ,-,.,/';
            OptionMembers = " ","-",".","/";
        }
        field(10020;"IRS 1099 Code";Code[10])
        {
            CaptionML = ENU='IRS 1099 Code',
                        ESM='Cód. form. 1099 de IRS',
                        FRC='Code IRS 1099',
                        ENC='IRS 1099 Code';
            TableRelation = "IRS 1099 Form-Box";
        }
        field(10021;"Balance on Date";Decimal)
        {
            AutoFormatExpression = "Currency Code";
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry".Amount WHERE ("Vendor No."=FIELD("No."),
                                                                           "Posting Date"=FIELD(UPPERLIMIT("Date Filter")),
                                                                           "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                           "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                           "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Balance on Date',
                        ESM='Saldo fecha',
                        FRC='Solde en date',
                        ENC='Balance on Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10022;"Balance on Date (LCY)";Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = -Sum("Detailed Vendor Ledg. Entry"."Amount (LCY)" WHERE ("Vendor No."=FIELD("No."),
                                                                                   "Posting Date"=FIELD(UPPERLIMIT("Date Filter")),
                                                                                   "Initial Entry Global Dim. 1"=FIELD("Global Dimension 1 Filter"),
                                                                                   "Initial Entry Global Dim. 2"=FIELD("Global Dimension 2 Filter"),
                                                                                   "Currency Code"=FIELD("Currency Filter")));
            CaptionML = ENU='Balance on Date ($)',
                        ESM='Saldo fecha ($)',
                        FRC='Solde en date ($)',
                        ENC='Balance on Date ($)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10023;"RFC No.";Code[13])
        {
            CaptionML = ENU='RFC No.',
                        ESM='N° RFC',
                        FRC='N° RFC',
                        ENC='RFC No.';

            trigger OnValidate();
            var
                Vendor : Record Vendor;
            begin
                
                Vendor.RESET;
                Vendor.SETRANGE("RFC No.","RFC No.");
                Vendor.SETFILTER("No.",'<>%1',"No.");
                if Vendor.FINDFIRST then
                  MESSAGE(Text10002,"RFC No.");
            end;
        }
        field(10024;"CURP No.";Code[18])
        {
            CaptionML = ENU='CURP No.',
                        ESM='N° CURP',
                        FRC='N° CURP',
                        ENC='CURP No.';

            trigger OnValidate();
            begin
                if STRLEN("CURP No.") <> 18 then
                  ERROR(Text10001,"CURP No.");
            end;
        }
        field(10025;"State Inscription";Text[30])
        {
            CaptionML = ENU='State Inscription',
                        ESM='Inscripción estatal',
                        FRC='Inscription d''état',
                        ENC='Province/State Inscription';
        }
        field(10026;"FATCA filing requirement";Boolean)
        {
            CaptionML = ENU='FATCA filing requirement',
                        ESM='Requisito de archivo FATCA',
                        FRC='Exigence d''archivage FATCA',
                        ENC='FATCA filing requirement';
        }
        field(14020;"Tax Identification Type";Option)
        {
            CaptionML = ENU='Tax Identification Type',
                        ESM='Tipo identificación impto.',
                        FRC='Type d''identification taxe',
                        ENC='Tax Identification Type';
            OptionCaptionML = ENU='Legal Entity,Natural Person',
                              ESM='Persona jurídica,Persona física',
                              FRC='Entité juridique,Personne physique',
                              ENC='Legal Entity,Natural Person';
            OptionMembers = "Legal Entity","Natural Person";
        }
    }

    keys
    {
        key(Key1;"No.")
        {
        }
        key(Key2;"Search Name")
        {
        }
        key(Key3;"Vendor Posting Group")
        {
        }
        key(Key4;"Currency Code")
        {
        }
        key(Key5;Priority)
        {
        }
        key(Key6;"Country/Region Code")
        {
        }
        key(Key7;"Gen. Bus. Posting Group")
        {
        }
        key(Key8;"VAT Registration No.")
        {
        }
        key(Key9;Name)
        {
        }
        key(Key10;City)
        {
        }
        key(Key11;"Post Code")
        {
        }
        key(Key12;"Phone No.")
        {
        }
        key(Key13;Contact)
        {
        }
        key(Key14;"Purchaser Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"No.",Name,City,"Post Code","Phone No.",Contact)
        {
        }
        fieldgroup(Brick;"No.",Name,"Balance (LCY)",Contact,"Balance Due (LCY)",Image)
        {
        }
    }

    trigger OnDelete();
    var
        ItemVendor : Record "Item Vendor";
        PurchPrice : Record "Purchase Price";
        PurchLineDiscount : Record "Purchase Line Discount";
        PurchPrepmtPct : Record "Purchase Prepayment %";
        SocialListeningSearchTopic : Record "Social Listening Search Topic";
        CustomReportSelection : Record "Custom Report Selection";
        PurchOrderLine : Record "Purchase Line";
        IntrastatSetup : Record "Intrastat Setup";
        VATRegistrationLogMgt : Codeunit "VAT Registration Log Mgt.";
    begin
        //ApprovalsMgmt.OnCancelVendorApprovalRequest(Vendor_gRec);

        //MoveEntries.MoveVendorEntries(Vendor_gRec);

        CommentLine.SETRANGE("Table Name",CommentLine."Table Name"::Vendor);
        CommentLine.SETRANGE("No.","No.");
        CommentLine.DELETEALL;

        VendBankAcc.SETRANGE("Vendor No.","No.");
        VendBankAcc.DELETEALL;

        OrderAddr.SETRANGE("Vendor No.","No.");
        OrderAddr.DELETEALL;

        ItemCrossReference.SETCURRENTKEY("Cross-Reference Type","Cross-Reference Type No.");
        ItemCrossReference.SETRANGE("Cross-Reference Type",ItemCrossReference."Cross-Reference Type"::Vendor);
        ItemCrossReference.SETRANGE("Cross-Reference Type No.","No.");
        ItemCrossReference.DELETEALL;

        PurchOrderLine.SETCURRENTKEY("Document Type","Pay-to Vendor No.");
        PurchOrderLine.SETRANGE("Pay-to Vendor No.","No.");
        if PurchOrderLine.FINDFIRST then
          ERROR(
            Text000,
            TABLECAPTION,"No.",
            PurchOrderLine."Document Type");

        PurchOrderLine.SETRANGE("Pay-to Vendor No.");
        PurchOrderLine.SETRANGE("Buy-from Vendor No.","No.");
        if not PurchOrderLine.ISEMPTY then
          ERROR(
            Text000,
            TABLECAPTION,"No.");

        //UpdateContFromVend.OnDelete(Vendor_gRec);

        DimMgt.DeleteDefaultDim(DATABASE::Vendor,"No.");

        ServiceItem.SETRANGE("Vendor No.","No.");
        ServiceItem.MODIFYALL("Vendor No.",'');

        ItemVendor.SETRANGE("Vendor No.","No.");
        ItemVendor.DELETEALL(true);

        if not SocialListeningSearchTopic.ISEMPTY then begin
          SocialListeningSearchTopic.FindSearchTopic(SocialListeningSearchTopic."Source Type"::Vendor,"No.");
          SocialListeningSearchTopic.DELETEALL;
        end;

        PurchPrice.SETCURRENTKEY("Vendor No.");
        PurchPrice.SETRANGE("Vendor No.","No.");
        PurchPrice.DELETEALL(true);

        PurchLineDiscount.SETCURRENTKEY("Vendor No.");
        PurchLineDiscount.SETRANGE("Vendor No.","No.");
        PurchLineDiscount.DELETEALL(true);

        CustomReportSelection.SETRANGE("Source Type",DATABASE::Vendor);
        CustomReportSelection.SETRANGE("Source No.","No.");
        CustomReportSelection.DELETEALL;

        PurchPrepmtPct.SETCURRENTKEY("Vendor No.");
        PurchPrepmtPct.SETRANGE("Vendor No.","No.");
        PurchPrepmtPct.DELETEALL(true);

        //VATRegistrationLogMgt.DeleteVendorLog(Vendor_gRec);

        IntrastatSetup.CheckDeleteIntrastatContact(IntrastatSetup."Intrastat Contact Type"::Vendor,"No.");
    end;

    trigger OnInsert();
    begin
        if "No." = '' then begin
          PurchSetup.GET;
          PurchSetup.TESTFIELD("Vendor Nos.");
          NoSeriesMgt.InitSeries(PurchSetup."Vendor Nos.",xRec."No. Series",0D,"No.","No. Series");
        end;

        if "Invoice Disc. Code" = '' then
          "Invoice Disc. Code" := "No.";

        /* if not (InsertFromContact or (InsertFromTemplate and (Contact <> ''))) then
          UpdateContFromVend.OnInsert(Vendor_gRec); */

        
        DimMgt.UpdateDefaultDim(
          DATABASE::Vendor,"No.",
          "Global Dimension 1 Code","Global Dimension 2 Code");

      
    end;

    trigger OnModify();
    begin
        
    end;

    trigger OnRename();
    begin
        
    end;

    var
        Text000 : TextConst ENU='You cannot delete %1 %2 because there is at least one outstanding Purchase %3 for this vendor.',ESM='No puede borrar %1 %2 porque hay al menos una compra pendiente %3 para este proveedor.',FRC='Vous ne pouvez pas supprimer %1 %2 car il existe encore au moins une %3 achat ouverte pour ce fournisseur.',ENC='You cannot delete %1 %2 because there is at least one outstanding Purchase %3 for this vendor.';
        Text002 : TextConst ENU='You have set %1 to %2. Do you want to update the %3 price list accordingly?',ESM='Tiene fijado %1 a %2. ¿Quiere actualizar el %3 lista precio en concordancia?',FRC='Vous avez réglé %1 à %2. Souhaitez-vous mettre à jour la liste de prix %3 en conséquence ?',ENC='You have set %1 to %2. Do you want to update the %3 price list accordingly?';
        Text003 : TextConst ENU='Do you wish to create a contact for %1 %2?',ESM='¿Confirma que desea crear un contacto para %1 %2?',FRC='Souhaitez-vous créer un contact pour %1 %2 ?',ENC='Do you wish to create a contact for %1 %2?';
        PurchSetup : Record "Purchases & Payables Setup";
        CommentLine : Record "Comment Line";
        PostCode : Record "Post Code";
        VendBankAcc : Record "Vendor Bank Account";
        OrderAddr : Record "Order Address";
        GenBusPostingGrp : Record "Gen. Business Posting Group";
        ItemCrossReference : Record "Item Cross Reference";
        RMSetup : Record "Marketing Setup";
        ServiceItem : Record "Service Item";
        SalespersonPurchaser : Record "Salesperson/Purchaser";
        NoSeriesMgt : Codeunit NoSeriesManagement;
        MoveEntries : Codeunit MoveEntries;
        UpdateContFromVend : Codeunit "VendCont-Update";
        DimMgt : Codeunit DimensionManagement;
        LeadTimeMgt : Codeunit "Lead-Time Management";
        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
        InsertFromContact : Boolean;
        Text004 : TextConst ENU='Contact %1 %2 is not related to vendor %3 %4.',ESM='Contacto %1 %2 no está relacionado con proveedor %3 %4.',FRC='Le contact %1 %2 n''est pas associé au fournisseur %3 %4.',ENC='Contact %1 %2 is not related to vendor %3 %4.';
        Text005 : TextConst ENU='post',ESM='registrar',FRC='reporter',ENC='post';
        Text006 : TextConst ENU='create',ESM='crear',FRC='créer',ENC='create';
        Text007 : TextConst ENU='You cannot %1 this type of document when Vendor %2 is blocked with type %3',ESM='No puede %1 este tipo de documento cuando el proveedor %2 está bloqueado por el tipo %3',FRC='Vous ne pouvez pas %1 ce type de document lorsque le fournisseur %2 est bloqué avec le type %3',ENC='You cannot %1 this type of document when Vendor %2 is blocked with type %3';
        Text008 : TextConst ENU='The %1 %2 has been assigned to %3 %4.\The same %1 cannot be entered on more than one %3.',ESM='%1 %2 se asignó a %3 %4.\No es posible seleccionar de nuevo %1 para más de un %3.',FRC='Le code %1 %2 a été affecté à %3 %4.\Le même code %1 ne peut pas être entré dans plus d''un %3.',ENC='The %1 %2 has been assigned to %3 %4.\The same %1 cannot be entered on more than one %3.';
        Text009 : TextConst ENU='Reconciling IC transactions may be difficult if you change IC Partner Code because this %1 has ledger entries in a fiscal year that has not yet been closed.\ Do you still want to change the IC Partner Code?',ESM='El control de transacciones de IC puede ser difícil si cambia el campo Código socio IC porque este %1 contiene movimientos contables de un ejercicio que aún no está cerrado.\ ¿Todavía quiere cambiar el campo Código socio IC?',FRC='Le rapprochement de transactions IC peut être difficile si vous modifiez le code de partenaire IC car %1 a des entrées de grand livre dans un exercice financier encore ouvert.\ Souhaitez-vous quand même modifier le code de partenaire IC?',ENC='Reconciling IC transactions may be difficult if you change IC Partner Code because this %1 has ledger entries in a fiscal year that has not yet been closed.\ Do you still want to change the IC Partner Code?';
        Text010 : TextConst ENU='You cannot change the contents of the %1 field because this %2 has one or more open ledger entries.',ESM='No puede cambiar el contenido del campo %1. %2 contiene al menos un movimiento contable abierto.',FRC='Vous ne pouvez pas changer le contenu du champ %1, car ce %2 contient une ou plusieurs écritures de journal ouvertes.',ENC='You cannot change the contents of the %1 field because this %2 has one or more open ledger entries.';
        Text011 : TextConst ENU='Before you can use Online Map, you must fill in the Online Map Setup window.\See Setting Up Online Map in Help.',ESM='Para poder usar Online Map, primero debe rellenar la ventana Configuración Online Map.\Consulte Configuración de Online Map en la Ayuda.',FRC='Avant de pouvoir utiliser Online Map, vous devez compléter la fenêtre Configuration Online Map.\Consultez la section Configuration d''Online Map dans l''Aide.',ENC='Before you can use Online Map, you must fill in the Online Map Setup window.\See Setting Up Online Map in Help.';
        Text10000 : TextConst ENU='%1 is not a valid RFC No.',ESM='%1 no es un número válido de RFC.',FRC='%1 n''est pas un n° RFC valide.',ENC='%1 is not a valid RFC No.';
        Text10001 : TextConst ENU='%1 is not a valid CURP No.',ESM='%1 no es un número válido de CURP.',FRC='%1 n''est pas un n° CURP valide.',ENC='%1 is not a valid CURP No.';
        Text10002 : TextConst ENU='The RFC No. %1 is used by another company.',ESM='Otra empresa está usando el RFC N° %1.',FRC='Le n° RFC %1 est utilisé par une autre compagnie.',ENC='The RFC No. %1 is used by another company.';
        SelectVendorErr : TextConst ENU='You must select an existing vendor.',ESM='Debe seleccionar un proveedor existente.',FRC='Vous devez sélectionner un fournisseur existant.',ENC='You must select an existing vendor.';
        CreateNewVendTxt : TextConst Comment='%1 is the name to be used to create the customer. ',ENU='Create a new vendor card for %1.',ESM='Cree una nueva ficha de proveedor para %1.',FRC='Créez une fiche fournisseur pour %1.',ENC='Create a new vendor card for %1.';
        VendNotRegisteredTxt : TextConst ENU='This vendor is not registered. To continue, choose one of the following options:',ESM='Este proveedor no está registrado. Para continuar, elija una de las opciones siguientes:',FRC='Ce fournisseur n''est pas enregistré. Pour continuer, sélectionnez l''une des options suivantes :',ENC='This vendor is not registered. To continue, choose one of the following options:';
        SelectVendTxt : TextConst ENU='Select an existing vendor.',ESM='Seleccione un proveedor existente.',FRC='Sélectionnez un fournisseur existant.',ENC='Select an existing vendor.';
        InsertFromTemplate : Boolean;
        PrivacyBlockedActionErr : TextConst Comment='%1 = action (create or post), %2 = vendor code.',ENU='You cannot %1 this type of document when Vendor %2 is blocked for privacy.',ESM='No puede %1 este tipo de documento cuando el proveedor %2 está bloqueado por motivos de privacidad.',FRC='Vous ne pouvez pas %1 ce type de document lorsque le fournisseur %2 est bloqué pour des raisons de confidentialité.',ENC='You cannot %1 this type of document when Vendor %2 is blocked for privacy.';
        PrivacyBlockedGenericTxt : TextConst Comment='%1 = vendor code',ENU='Privacy Blocked must not be true for vendor %1.',ESM='La opción Privacidad bloqueada no debe ser verdadera para el proveedor %1.',FRC='Le champ Confidentialité bloquée ne doit pas avoir la valeur true pour le fournisseur %1.',ENC='Privacy Blocked must not be true for vendor %1.';
        ConfirmBlockedPrivacyBlockedQst : TextConst ENU='If you change the Blocked field, the Privacy Blocked field is changed to No. Do you want to continue?',ESM='Si cambia el campo Bloqueado, se cambiará el campo Privacidad bloqueada a No. ¿Desea continuar?',FRC='Si vous modifiez le champ Bloqué, le champ Confidentialité bloquée prend la valeur Non. Voulez-vous continuer ?',ENC='If you change the Blocked field, the Privacy Blocked field is changed to No. Do you want to continue?';
        CanNotChangeBlockedDueToPrivacyBlockedErr : TextConst ENU='The Blocked field cannot be changed because the user is blocked for privacy reasons.',ESM='No se puede cambiar el campo Bloqueado porque el usuario está bloqueado por motivos de privacidad.',FRC='Le champ Bloqué ne peut pas être modifié, car l''utilisateur est bloqué pour des raisons de confidentialité.',ENC='The Blocked field cannot be changed because the user is blocked for privacy reasons.';

        Vendor_gRec : Record "Vendor Extension";

    
    
}

