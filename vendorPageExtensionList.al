page 50110 "Vendor List Extension"
{
    // version NAVW111.00.00.21441,NAVNA11.00.00.21441
    UsageCategory =Lists;
    CaptionML = ENU='Vendors',
                ESM='Proveedores',
                FRC='Fournisseurs',
                ENC='Vendors';
    CardPageID = "Vendor Card Extension";
    Editable = false;
    PageType = List;
    PromotedActionCategoriesML = ENU='New,Process,Report,New Document,Vendor',
                                 ESM='Nuevo,Procesar,Informar,Nuevo documento,Proveedor',
                                 FRC='Nouveau,Traiter,Déclarer,Nouveau Document,Fournisseur',
                                 ENC='New,Process,Report,New Document,Vendor';
    RefreshOnActivate = true;
    SourceTable = "Vendor Extension";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("No.";"No.")
                {
                    ApplicationArea = All;
                    ToolTipML = ENU='Specifies the number of the involved entry or record, according to the specified number series.',
                                ESM='Especifica el número de la entrada o el registro relacionado, según la serie numérica especificada.',
                                FRC='Spécifie le numéro de l''écriture ou de l''enregistrement concerné, en fonction de la série de numéros spécifiée.',
                                ENC='Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(Name;Name)
                {
                    ApplicationArea = All;
                    ToolTipML = ENU='Specifies the vendor''s name. You can enter a maximum of 30 characters, both numbers and letters.',
                                ESM='Especifica el nombre del proveedor. Se pueden escribir un máximo de 30 caracteres, tanto números como letras.',
                                FRC='Spécifie le nom du fournisseur. Vous pouvez entrer au maximum 30 caractères, des chiffres et des lettres.',
                                ENC='Specifies the vendor''s name. You can enter a maximum of 30 characters, both numbers and letters.';
                }
                field("Responsibility Center";"Responsibility Center")
                {
                    ApplicationArea = Advanced;
                    ToolTipML = ENU='Specifies the code of the responsibility center, such as a distribution hub, that is associated with the involved user, company, customer, or vendor.',
                                ESM='Especifica el código del centro de responsabilidad, como, por ejemplo, un centro de distribución que esté asociado al usuario, la empresa, el cliente o el proveedor relacionado.',
                                FRC='Spécifie le code du centre de gestion, tel qu''un centre de distribution, associé à l''utilisateur, la compagnie, le client ou le fournisseur concerné.',
                                ENC='Specifies the code of the responsibility centre, such as a distribution hub, that is associated with the involved user, company, customer, or vendor.';
                }
                field("Location Code";"Location Code")
                {
                    ApplicationArea = Location;
                    ToolTipML = ENU='Specifies the warehouse location where items from the vendor must be received by default.',
                                ESM='Especifica el almacén en que se deben recibir los productos del proveedor de forma predeterminada.',
                                FRC='Spécifie l''entrepôt où les articles du fournisseur doivent être reçus par défaut.',
                                ENC='Specifies the warehouse location where items from the vendor must be received by default.';
                }
                field("Post Code";"Post Code")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the ZIP code.',
                                ESM='Especifica el código postal.',
                                FRC='Spécifie le code postal.',
                                ENC='Specifies the postal code.';
                    Visible = false;
                }
                field("Country/Region Code";"Country/Region Code")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the country/region of the address.',
                                ESM='Especifica el país o la región de la dirección.',
                                FRC='Spécifie le pays/la région de l''adresse.',
                                ENC='Specifies the country/region of the address.';
                    Visible = false;
                }
                field("Phone No.";"Phone No.")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the vendor''s telephone number.',
                                ESM='Especifica el número de teléfono del proveedor.',
                                FRC='Spécifie le numéro de téléphone du fournisseur.',
                                ENC='Specifies the vendor''s telephone number.';
                }
                field("Fax No.";"Fax No.")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the vendor''s fax number.',
                                ESM='Especifica el número de fax del proveedor.',
                                FRC='Spécifie le numéro de télécopieur du fournisseur.',
                                ENC='Specifies the vendor''s fax number.';
                    Visible = false;
                }
                field("IC Partner Code";"IC Partner Code")
                {
                    ApplicationArea = Intercompany;
                    ToolTipML = ENU='Specifies the vendor''s intercompany partner code.',
                                ESM='Especifica el código de socio de empresas vinculadas del proveedor.',
                                FRC='Spécifie le code partenaire intercompagnie du fournisseur.',
                                ENC='Specifies the vendor''s intercompany partner code.';
                    Visible = false;
                }
                field(Contact;Contact)
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the name of the person you regularly contact when you do business with this vendor.',
                                ESM='Especifica el nombre de la persona con la que contacta normalmente cuando trata con este proveedor.',
                                FRC='Spécifie le nom de la personne que vous contactez régulièrement lorsque vous traitez avec ce fournisseur.',
                                ENC='Specifies the name of the person you regularly contact when you do business with this vendor.';
                }
                field("Purchaser Code";"Purchaser Code")
                {
                    ApplicationArea = Suite;
                    ToolTipML = ENU='Specifies which purchaser is assigned to the vendor.',
                                ESM='Especifica el comprador asignado al proveedor.',
                                FRC='Spécifie l''acheteur affecté au fournisseur.',
                                ENC='Specifies which purchaser is assigned to the vendor.';
                    Visible = false;
                }
                field("Vendor Posting Group";"Vendor Posting Group")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the vendor''s market type to link business transactions made for the vendor with the appropriate account in the general ledger.',
                                ESM='Especifica el tipo de mercado del proveedor para vincular las transacciones empresariales realizadas para el proveedor con la cuenta correspondiente en la contabilidad general.',
                                FRC='Spécifie le type de marché du fournisseur pour lier les transactions commerciales effectuées pour le fournisseur au compte approprié dans le grand livre.',
                                ENC='Specifies the vendor''s market type to link business transactions made for the vendor with the appropriate account in the general ledger.';
                    Visible = false;
                }
                field("Gen. Bus. Posting Group";"Gen. Bus. Posting Group")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the vendor''s trade type to link transactions made for this vendor with the appropriate general ledger account according to the general posting setup.',
                                ESM='Especifica el tipo de comercio del proveedor para vincular las transacciones realizadas para este proveedor con la cuenta de contabilidad general correspondiente según la configuración de registro general.',
                                FRC='Spécifie le type commercial du fournisseur pour lier les transactions effectuées pour ce fournisseur au compte GL approprié en fonction de la configuration générale du report.',
                                ENC='Specifies the vendor''s trade type to link transactions made for this vendor with the appropriate general ledger account according to the general posting setup.';
                    Visible = false;
                }
                field("VAT Bus. Posting Group";"VAT Bus. Posting Group")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the Tax specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the Tax posting setup.',
                                ESM='Indica la especificación de IVA del cliente o el proveedor relacionado para vincular las transacciones realizadas para este registro con la cuenta de contabilidad general correspondiente de acuerdo con la configuración de registro de IVA.',
                                FRC='Spécifie le détail TVA du client ou du fournisseur concerné pour lier les transactions effectuées pour cet enregistrement au compte GL approprié en fonction de la configuration de report TVA.',
                                ENC='Specifies the Tax specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the Tax posting setup.';
                    Visible = false;
                }
                field("Payment Terms Code";"Payment Terms Code")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.',
                                ESM='Especifica una fórmula que calcula la fecha de vencimiento del pago, la fecha de descuento por pronto pago y el importe de descuento por pronto pago.',
                                FRC='Spécifie une formule qui calcule la date d''échéance du paiement, la date de l''escompte de paiement et le montant de l''escompte de paiement.',
                                ENC='Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.';
                    Visible = false;
                }
                field("Fin. Charge Terms Code";"Fin. Charge Terms Code")
                {
                    ApplicationArea = Advanced;
                    ToolTipML = ENU='Specifies the code for the involved finance charges in case of late payment.',
                                ESM='Especifica el código de los intereses que se aplicarán en caso de retraso en el pago.',
                                FRC='Spécifie le code des intérêts concernés en cas de retard de paiement.',
                                ENC='Specifies the code for the involved finance charges in case of late payment.';
                    Visible = false;
                }
                field("Currency Code";"Currency Code")
                {
                    ApplicationArea = Suite;
                    ToolTipML = ENU='Specifies the currency code that is inserted by default when you create purchase documents or journal lines for the vendor.',
                                ESM='Especifica el código de divisa que se inserta de forma predeterminada al crear documentos de compras o líneas del diario para el proveedor.',
                                FRC='Spécifie le code devise qui est inséré par défaut lorsque vous créez des documents achat ou des lignes journal pour le fournisseur.',
                                ENC='Specifies the currency code that is inserted by default when you create purchase documents or journal lines for the vendor.';
                    Visible = false;
                }
                field("Language Code";"Language Code")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.',
                                ESM='Especifica el idioma que se usa al traducir el texto especificado en los documentos destinados a un socio comercial extranjero, como, por ejemplo, la descripción del producto en una confirmación de pedido.',
                                FRC='Spécifie la langue utilisée lors de la traduction du texte spécifié sur les documents du partenaire commercial étranger, par exemple une description d''article sur une confirmation de commande.',
                                ENC='Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.';
                    Visible = false;
                }
                field("Search Name";"Search Name")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies an alternate name that you can use to search for the record in question when you cannot remember the value in the Name field.',
                                ESM='Especifica un nombre alternativo que puede usar para buscar el registro en cuestión cuando no logra recordar el valor del campo Nombre.',
                                FRC='Spécifie un autre nom que vous pouvez utiliser pour rechercher l''enregistrement concerné lorsque vous ne vous souvenez plus de la valeur dans le champ Nom.',
                                ENC='Specifies an alternate name that you can use to search for the record in question when you cannot remember the value in the Name field.';
                }
                field(Blocked;Blocked)
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.',
                                ESM='Especifica que se ha bloqueado el registro relacionado para que no se registre en transacciones, por ejemplo, en el caso de un cliente que ha sido declarado insolvente o de un elemento que se encuentra en cuarentena.',
                                FRC='Spécifie que la validation de l''enregistrement associé dans les transactions est bloquée, par exemple un client est déclaré insolvable ou un article est placé en quarantaine.',
                                ENC='Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.';
                    Visible = false;
                }
                field("Privacy Blocked";"Privacy Blocked")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies whether to limit access to data for the data subject during daily operations. This is useful, for example, when protecting data from changes while it is under privacy review.',
                                ESM='Especifica si desea limitar el acceso a los datos del interesado durante las operaciones diarias. Esto es útil, por ejemplo, cuando desea proteger los datos para que no se introduzcan cambios mientras se encuentran en revisión de privacidad.',
                                FRC='Spécifie si l''accès aux données doit être limité pour l''objet de données pendant les opérations quotidiennes. Cela est utile, par exemple, pour empêcher toute modification des données lorsqu''elles sont en cours de révision.',
                                ENC='Specifies whether to limit access to data for the data subject during daily operations. This is useful, for example, when protecting data from changes while it is under privacy review.';
                    Visible = false;
                }
                field("Last Date Modified";"Last Date Modified")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies when the vendor card was last modified.',
                                ESM='Especifica cuándo se modificó la ficha de proveedor por última vez.',
                                FRC='Spécifie la date à laquelle la fiche fournisseur a été modifiée pour la dernière fois.',
                                ENC='Specifies when the vendor card was last modified.';
                    Visible = false;
                }
                field("Application Method";"Application Method")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies how to apply payments to entries for this vendor.',
                                ESM='Especifica cómo liquidar pagos en los movimientos para este proveedor.',
                                FRC='Spécifie comment affecter des paiements à des écritures pour ce fournisseur.',
                                ENC='Specifies how to apply payments to entries for this vendor.';
                    Visible = false;
                }
                field("Location Code2";"Location Code")
                {
                    ApplicationArea = Location;
                    ToolTipML = ENU='Specifies the warehouse location where items from the vendor must be received by default.',
                                ESM='Especifica el almacén en que se deben recibir los productos del proveedor de forma predeterminada.',
                                FRC='Spécifie l''entrepôt où les articles du fournisseur doivent être reçus par défaut.',
                                ENC='Specifies the warehouse location where items from the vendor must be received by default.';
                    Visible = false;
                }
                field("Shipment Method Code";"Shipment Method Code")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the delivery conditions of the related shipment, such as free on board (FOB).',
                                ESM='Especifica las condiciones de entrega del envío en cuestión, como franco a bordo (FOB).',
                                FRC='Spécifie les conditions de livraison de la livraison associée, telles que franco à bord (FAB).',
                                ENC='Specifies the delivery conditions of the related shipment, such as free on board (FOB).';
                    Visible = false;
                }
                field("Lead Time Calculation";"Lead Time Calculation")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies a date formula for the amount of time it takes to replenish the item.',
                                ESM='Especifica una fórmula de fecha con la cantidad de tiempo que se tarda en reponer el producto.',
                                FRC='Spécifie une formule de date pour le délai nécessaire au réapprovisionnement de l''article.',
                                ENC='Specifies a date formula for the amount of time it takes to replenish the item.';
                    Visible = false;
                }
                field("Base Calendar Code";"Base Calendar Code")
                {
                    ApplicationArea = Advanced;
                    ToolTipML = ENU='Specifies a customizable calendar for delivery planning that holds the vendor''s working days and holidays.',
                                ESM='Especifica un calendario personalizable para la entrega que incluye los días laborables y festivos del proveedor.',
                                FRC='Spécifie un calendrier personnalisable pour la planification de la livraison qui contient les vacances et les jours ouvrés du fournisseur.',
                                ENC='Specifies a customizable calendar for delivery planning that holds the vendor''s working days and holidays.';
                    Visible = false;
                }
                field("Balance (LCY)";"Balance (LCY)")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the total value of your completed purchases from the vendor in the current fiscal year. It is calculated from amounts excluding tax on all completed purchase invoices and credit memos.',
                                ESM='Especifica el valor total de sus compras completadas al proveedor en el ejercicio actual. Se calcula a partir de importes sin IVA sobre facturas y notas de crédito de compra completadas.',
                                FRC='Spécifie la valeur totale de vos achats terminés auprès du fournisseur au cours de l''exercice financier en cours. Elle est calculée à partir des montants hors TVA sur toutes les notes de crédit et factures achat terminées.',
                                ENC='Specifies the total value of your completed purchases from the vendor in the current fiscal year. It is calculated from amounts excluding tax on all completed purchase invoices and credit memos.';

                    trigger OnDrillDown();
                    begin
                        
                    end;
                }
                field("Balance Due (LCY)";"Balance Due (LCY)")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the total value of your unpaid purchases from the vendor in the current fiscal year. It is calculated from amounts excluding tax on all open purchase invoices and credit memos.',
                                ESM='Especifica el valor total de sus compras sin pagar al proveedor en el ejercicio actual. Se calcula a partir de importes sin IVA sobre facturas y notas de crédito de compra abiertas.',
                                FRC='Spécifie la valeur totale de vos achats impayés auprès du fournisseur au cours de l''exercice financier en cours. Elle est calculée à partir des montants hors TVA sur toutes les notes de crédit et factures achat ouvertes.',
                                ENC='Specifies the total value of your unpaid purchases from the vendor in the current fiscal year. It is calculated from amounts excluding tax on all open purchase invoices and credit memos.';

                    trigger OnDrillDown();
                    begin
                       
                    end;
                }
            }
        }
        area(factboxes)
        {
            part("Power BI Report FactBox";"Power BI Report FactBox")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Power BI Reports',
                            ESM='Informes de Power BI',
                            FRC='Rapports Power BI',
                            ENC='Power BI Reports';
                Visible = PowerBIVisible;
            }
            part(Control14;"Social Listening FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "Source Type"=CONST(Vendor),
                              "Source No."=FIELD("No.");
                Visible = SocialListeningVisible;
            }
            part(Control15;"Social Listening Setup FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "Source Type"=CONST(Vendor),
                              "Source No."=FIELD("No.");
                UpdatePropagation = Both;
                Visible = SocialListeningSetupVisible;
            }
            part(VendorDetailsFactBox;"Vendor Details FactBox")
            {
                ApplicationArea = Advanced;
                SubPageLink = "No."=FIELD("No."),
                              "Currency Filter"=FIELD("Currency Filter"),
                              "Date Filter"=FIELD("Date Filter"),
                              "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
                Visible = false;
            }
            part(VendorStatisticsFactBox;"Vendor Statistics FactBox")
            {
                ApplicationArea = Advanced;
                SubPageLink = "No."=FIELD("No."),
                              "Currency Filter"=FIELD("Currency Filter"),
                              "Date Filter"=FIELD("Date Filter"),
                              "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
            }
            part(VendorHistBuyFromFactBox;"Vendor Hist. Buy-from FactBox")
            {
                ApplicationArea = Basic,Suite;
                SubPageLink = "No."=FIELD("No."),
                              "Currency Filter"=FIELD("Currency Filter"),
                              "Date Filter"=FIELD("Date Filter"),
                              "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
            }
            part(VendorHistPayToFactBox;"Vendor Hist. Pay-to FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No."=FIELD("No."),
                              "Currency Filter"=FIELD("Currency Filter"),
                              "Date Filter"=FIELD("Date Filter"),
                              "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
                Visible = false;
            }
            systempart(Control1900383207;Links)
            {
            }
            systempart(Control1905767507;Notes)
            {
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Ven&dor")
            {
                CaptionML = ENU='Ven&dor',
                            ESM='&Proveedor',
                            FRC='Fourn&isseur',
                            ENC='Ven&dor';
                Image = Vendor;
                group(Dimensions)
                {
                    CaptionML = ENU='Dimensions',
                                ESM='Dimensiones',
                                FRC='Dimensions',
                                ENC='Dimensions';
                    Image = Dimensions;
                    action(DimensionsSingle)
                    {
                        ApplicationArea = Suite;
                        CaptionML = ENU='Dimensions-Single',
                                    ESM='Dimensiones-Individual',
                                    FRC='Dimensions - Simples',
                                    ENC='Dimensions-Single';
                        Image = Dimensions;
                        RunObject = Page "Default Dimensions";
                        RunPageLink = "Table ID"=CONST(23),
                                      "No."=FIELD("No.");
                        ShortCutKey = 'Shift+Ctrl+D';
                        ToolTipML = ENU='View or edit the single set of dimensions that are set up for the selected record.',
                                    ESM='Permite ver o editar el grupo único de dimensiones configuradas para el registro seleccionado.',
                                    FRC='Affichez ou modifiez l''ensemble unique de dimensions paramétrées pour l''enregistrement sélectionné.',
                                    ENC='View or edit the single set of dimensions that are set up for the selected record.';
                    }
                    action(DimensionsMultiple)
                    {
                        AccessByPermission = TableData Dimension=R;
                        ApplicationArea = Suite;
                        CaptionML = ENU='Dimensions-&Multiple',
                                    ESM='Dimensiones-&Múltiple',
                                    FRC='Dimensions - &Multiples',
                                    ENC='Dimensions-&Multiple';
                        Image = DimensionSets;
                        ToolTipML = ENU='View or edit dimensions for a group of records. You can assign dimension codes to transactions to distribute costs and analyze historical information.',
                                    ESM='Permite ver o editar dimensiones para un grupo de registros. Se pueden asignar códigos de dimensión a transacciones para distribuir los costos y analizar la información histórica.',
                                    FRC='Affichez ou modifiez les dimensions pour un groupe d''enregistrements. Vous pouvez affecter des codes dimension aux transactions dans le but de répartir les coûts et d''analyser les informations d''historique.',
                                    ENC='View or edit dimensions for a group of records. You can assign dimension codes to transactions to distribute costs and analyse historical information.';

                        trigger OnAction();
                        var
                            Vend : Record Vendor;
                            DefaultDimMultiple : Page "Default Dimensions-Multiple";
                        begin
                            CurrPage.SETSELECTIONFILTER(Vend);
                            DefaultDimMultiple.SetMultiVendor(Vend);
                            DefaultDimMultiple.RUNMODAL;
                        end;
                    }
                }
                action("Bank Accounts")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Bank Accounts',
                                ESM='Bancos',
                                FRC='Comptes bancaires',
                                ENC='Bank Accounts';
                    Image = BankAccount;
                    RunObject = Page "Vendor Bank Account List";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    ToolTipML = ENU='Open the list of the vendor''s bank accounts',
                                ESM='Permite abrir la lista de las cuentas bancarias de los proveedores',
                                FRC='Ouvrir la liste des comptes bancaires du fournisseur.',
                                ENC='Open the list of the vendor''s bank accounts';
                }
                action("C&ontact")
                {
                    AccessByPermission = TableData Contact=R;
                    ApplicationArea = Advanced;
                    CaptionML = ENU='C&ontact',
                                ESM='&Contacto',
                                FRC='C&ontact',
                                ENC='C&ontact';
                    Image = ContactPerson;
                    ToolTipML = ENU='View or edit detailed information about the contact person at the vendor.',
                                ESM='Permite ver o editar la información detallada sobre la persona de contacto del proveedor.',
                                FRC='Afficher ou modifier des informations détaillées concernant la personne à contacter chez le fournisseur.',
                                ENC='View or edit detailed information about the contact person at the vendor.';

                    trigger OnAction();
                    begin
                       
                    end;
                }
                separator(Separator55)
                {
                }
                action(OrderAddresses)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Order &Addresses',
                                ESM='D&irecciones pedido',
                                FRC='&Adresses de commande',
                                ENC='Order &Addresses';
                    Image = Addresses;
                    RunObject = Page "Order Address List";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    ToolTipML = ENU='View or edit alternate addresses for the vendor.',
                                ESM='Permite ver o editar direcciones alternativas para el proveedor.',
                                FRC='Afficher ou modifier la liste des adresses commande secondaires du fournisseur.',
                                ENC='View or edit alternate addresses for the vendor.';
                }
                action("&Locations")
                {
                    CaptionML = ENU='&Locations',
                                ESM='&Almacenes',
                                FRC='&Emplacements',
                                ENC='&Locations';
                    Image = Warehouse;
                    RunObject = Page "Vendor Locations";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    ToolTipML = ENU='View the locations for the vendors.',
                                ESM='Permite ver las ubicaciones de los proveedores.',
                                FRC='Affichez les emplacements des fournisseurs.',
                                ENC='View the locations for the vendors.';
                }
                action("Co&mments")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Co&mments',
                                ESM='C&omentarios',
                                FRC='Co&mmentaires',
                                ENC='Co&mments';
                    Image = ViewComments;
                    RunObject = Page "Comment Sheet";
                    RunPageLink = "Table Name"=CONST(Vendor),
                                  "No."=FIELD("No.");
                    ToolTipML = ENU='View or add comments for the record.',
                                ESM='Permite ver o agregar comentarios para el registro.',
                                FRC='Affichez ou ajoutez des commentaires pour l''enregistrement.',
                                ENC='View or add comments for the record.';
                }
                action("Cross Re&ferences")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Cross Re&ferences',
                                ESM='Referencias cru&zadas',
                                FRC='Ren&vois',
                                ENC='Cross Re&ferences';
                    Image = Change;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedOnly = true;
                    RunObject = Page "Cross References";
                    RunPageLink = "Cross-Reference Type"=CONST(Vendor),
                                  "Cross-Reference Type No."=FIELD("No.");
                    RunPageView = SORTING("Cross-Reference Type","Cross-Reference Type No.");
                    ToolTipML = ENU='Set up a customer''s or vendor''s own identification of the selected item. Cross-references to the customer''s item number means that the item number is automatically shown on sales documents instead of the number that you use.',
                                ESM='Configura una identificación del producto seleccionado propia del cliente o del proveedor. Las referencias cruzadas con el número de producto del cliente quieren decir que el número de producto se muestra automáticamente en los documentos de venta, en lugar del número que usted usa.',
                                FRC='Configurez la manière dont un client ou un fournisseur identifie l''article sélectionné. Les références externes au numéro d''article du client impliquent que le numéro d''article est automatiquement affiché sur les documents vente au lieu du numéro que vous utilisez.',
                                ENC='Set up a customer''s or vendor''s own identification of the selected item. Cross-references to the customer''s item number means that the item number is automatically shown on sales documents instead of the number that you use.';
                }
                action(ApprovalEntries)
                {
                    AccessByPermission = TableData "Approval Entry"=R;
                    ApplicationArea = Suite;
                    CaptionML = ENU='Approvals',
                                ESM='Aprobaciones',
                                FRC='Approbations',
                                ENC='Approvals';
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedOnly = true;
                    ToolTipML = ENU='View a list of the records that are waiting to be approved. For example, you can see who requested the record to be approved, when it was sent, and when it is due to be approved.',
                                ESM='Permite ver una lista de los registros en espera de aprobación. Por ejemplo, puede ver quién ha solicitado la aprobación del registro, cuándo se envió y la fecha de vencimiento de la aprobación.',
                                FRC='Affichez une liste des enregistrements en attente d''approbation. Par exemple, vous pouvez voir qui a demandé l''approbation de l''enregistrement, quand il a été envoyé et quand son approbation est due.',
                                ENC='View a list of the records that are waiting to be approved. For example, you can see who requested the record to be approved, when it was sent, and when it is due to be approved.';

                    trigger OnAction();
                    begin
                        ApprovalsMgmt.OpenApprovalEntriesPage(RECORDID);
                    end;
                }
            }
            group("&Purchases")
            {
                CaptionML = ENU='&Purchases',
                            ESM='&Compras',
                            FRC='&Achats',
                            ENC='&Purchases';
                Image = Purchasing;
                action(Items)
                {
                    ApplicationArea = Planning;
                    CaptionML = ENU='Items',
                                ESM='Productos',
                                FRC='Articles',
                                ENC='Items';
                    Image = Item;
                    RunObject = Page "Vendor Item Catalog";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Vendor No.");
                    ToolTipML = ENU='Open the list of items that you trade in.',
                                ESM='Abre la lista de productos que puede comercializar.',
                                FRC='Ouvrez la liste des articles que vous commercialisez.',
                                ENC='Open the list of items that you trade in.';
                }
                action("Invoice &Discounts")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Invoice &Discounts',
                                ESM='Dto. &factura',
                                FRC='&Escomptes facture',
                                ENC='Invoice &Discounts';
                    Image = CalculateInvoiceDiscount;
                    RunObject = Page "Vend. Invoice Discounts";
                    RunPageLink = Code=FIELD("Invoice Disc. Code");
                    ToolTipML = ENU='Set up different discounts that are applied to invoices for the customer. An invoice discount is automatically granted to the customer when the total on a sales invoice exceeds a certain amount.',
                                ESM='Configurar descuentos diferentes que se aplican a las facturas para el cliente. Un descuento de factura se concede automáticamente al cliente cuando el total de una factura de venta supera un importe determinado.',
                                FRC='Configurez des escomptes différents qui seront appliqués aux factures du client. Un escompte facture est automatiquement accordé au client lorsque le total sur la facture vente dépasse un certain montant.',
                                ENC='Set up different discounts that are applied to invoices for the customer. An invoice discount is automatically granted to the customer when the total on a sales invoice exceeds a certain amount.';
                }
                action(Prices)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Prices',
                                ESM='Precios',
                                FRC='Prix',
                                ENC='Prices';
                    Image = Price;
                    RunObject = Page "Purchase Prices";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Vendor No.");
                    ToolTipML = ENU='View or set up different prices for items that you buy from the vendor. An item price is automatically granted on invoice lines when the specified criteria are met, such as vendor, quantity, or ending date.',
                                ESM='Permite ver o configurar distintos precios para los artículos que se compran al proveedor. Se concede un precio de artículo automáticamente en las líneas de factura cuando se cumplen los criterios especificados, como el proveedor, la cantidad o la fecha final.',
                                FRC='Affichez ou paramétrez des prix différents pour les articles que vous achetez au fournisseur. Un prix article est automatiquement affecté sur les lignes facture lorsque les critères spécifiés sont satisfaits, par exemple le fournisseur, la quantité ou la date de fin.',
                                ENC='View or set up different prices for items that you buy from the vendor. An item price is automatically granted on invoice lines when the specified criteria are met, such as vendor, quantity, or ending date.';
                }
                action("Line Discounts")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Line Discounts',
                                ESM='Descuentos línea',
                                FRC='Ligne Escomptes',
                                ENC='Line Discounts';
                    Image = LineDiscount;
                    RunObject = Page "Purchase Line Discounts";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Vendor No.");
                    ToolTipML = ENU='View or set up different discounts for items that you buy from the vendor. An item discount is automatically granted on invoice lines when the specified criteria are met, such as vendor, quantity, or ending date.',
                                ESM='Permite ver o configurar distintos descuentos para los artículos que se compran al proveedor. Se concede un descuento de artículo automáticamente en las líneas de factura cuando se cumplen los criterios especificados, como el proveedor, la cantidad o la fecha final.',
                                FRC='Affichez ou configurez des escomptes différents pour les articles que vous achetez au fournisseur. Un escompte article est automatiquement affecté sur les lignes facture lorsque les critères spécifiés sont satisfaits, par exemple le fournisseur, la quantité ou la date de fin.',
                                ENC='View or set up different discounts for items that you buy from the vendor. An item discount is automatically granted on invoice lines when the specified criteria are met, such as vendor, quantity, or ending date.';
                }
                action("Prepa&yment Percentages")
                {
                    ApplicationArea = Prepayments;
                    CaptionML = ENU='Prepa&yment Percentages',
                                ESM='Porcentajes &anticipo',
                                FRC='Pour&centages paiement anticipé',
                                ENC='Prepa&yment Percentages';
                    Image = PrepaymentPercentages;
                    RunObject = Page "Purchase Prepmt. Percentages";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Vendor No.");
                    ToolTipML = ENU='View or edit the percentages of the price that can be paid as a prepayment. ',
                                ESM='Permite ver o editar los porcentajes del precio que pueden pagarse como anticipo. ',
                                FRC='Affichez ou modifiez les pourcentages du prix pouvant être réglés comme un paiement anticipé. ',
                                ENC='View or edit the percentages of the price that can be paid as a prepayment. ';
                }
                action("S&td. Vend. Purchase Codes")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU='S&td. Vend. Purchase Codes',
                                ESM='&Cód. estánd. comp. prov.',
                                FRC='Codes d''achat de client s&tandard',
                                ENC='S&td. Vend. Purchase Codes';
                    Image = CodesList;
                    RunObject = Page "Standard Vendor Purchase Codes";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    ToolTipML = ENU='View or edit recurring purchase lines for the vendor.',
                                ESM='Permite ver o editar las líneas de compras periódicas del proveedor.',
                                FRC='Afficher ou modifier des lignes achat récurrentes pour le fournisseur.',
                                ENC='View or edit recurring purchase lines for the vendor.';
                }
                action("Mapping Text to Account")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Mapping Text to Account',
                                ESM='Asignación de texto a cuenta',
                                FRC='Correspondance texte et compte',
                                ENC='Mapping Text to Account';
                    Image = MapAccounts;
                    RunObject = Page "Text-to-Account Mapping Wksh.";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    ToolTipML = ENU='Page mapping text to account',
                                ESM='Página de asignación de texto a cuenta',
                                FRC='Correspondance de page Texte et compte',
                                ENC='Page mapping text to account';
                }
            }
            group(Documents)
            {
                CaptionML = ENU='Documents',
                            ESM='Documentos',
                            FRC='Documents',
                            ENC='Documents';
                Image = Administration;
                action(Quotes)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Quotes',
                                ESM='Cotizaciones',
                                FRC='Devis',
                                ENC='Quotes';
                    Image = Quote;
                    RunObject = Page "Purchase Quotes";
                    RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Document Type","Buy-from Vendor No.");
                    ToolTipML = ENU='View a list of ongoing sales quotes.',
                                ESM='Permite ver una lista de cotizaciones de venta en curso.',
                                FRC='Afficher la liste des devis vente en cours.',
                                ENC='View a list of ongoing sales quotes.';
                }
                action(Orders)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Orders',
                                ESM='Pedidos',
                                FRC='Commandes',
                                ENC='Orders';
                    Image = Document;
                    RunObject = Page "Purchase Order List";
                    RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Document Type","Buy-from Vendor No.");
                    ToolTipML = ENU='View a list of ongoing purchase orders for the vendor.',
                                ESM='Permite ver una lista de pedidos de compra en curso para el proveedor.',
                                FRC='Affichez une liste des bons de commande en cours pour le fournisseur.',
                                ENC='View a list of ongoing purchase orders for the vendor.';
                }
                action("Return Orders")
                {
                    ApplicationArea = PurchReturnOrder;
                    CaptionML = ENU='Return Orders',
                                ESM='Devoluciones',
                                FRC='Retours',
                                ENC='Return Orders';
                    Image = ReturnOrder;
                    RunObject = Page "Purchase Return Order List";
                    RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Document Type","Buy-from Vendor No.");
                    ToolTipML = ENU='Open the list of ongoing return orders.',
                                ESM='Abre la lista de pedidos de devolución de venta en curso.',
                                FRC='Ouvrir la liste des retours en cours.',
                                ENC='Open the list of ongoing return orders.';
                }
                action("Blanket Orders")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Blanket Orders',
                                ESM='Pedidos abiertos',
                                FRC='Commandes permanentes',
                                ENC='Blanket Orders';
                    Image = BlanketOrder;
                    RunObject = Page "Blanket Purchase Orders";
                    RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Document Type","Buy-from Vendor No.");
                    ToolTipML = ENU='Open the list of ongoing blanket orders.',
                                ESM='Abre la lista de pedidos abiertos de venta actuales.',
                                FRC='Ouvrir la liste des commandes ouvertes en cours.',
                                ENC='Open the list of ongoing blanket orders.';
                }
            }
            group(History)
            {
                CaptionML = ENU='History',
                            ESM='Historial',
                            FRC='Historique',
                            ENC='History';
                Image = History;
                action("Ledger E&ntries")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Ledger E&ntries',
                                ESM='&Movimientos',
                                FRC='É&critures comptables',
                                ENC='Ledger E&ntries';
                    Image = VendorLedger;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Vendor Ledger Entries";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    RunPageView = SORTING("Vendor No.")
                                  ORDER(Descending);
                    ShortCutKey = 'Ctrl+F7';
                    ToolTipML = ENU='View the history of transactions that have been posted for the selected record.',
                                ESM='Permite ver el historial de transacciones que se han registrado para el registro seleccionado.',
                                FRC='Affichez l''historique des transactions qui ont été reportées pour l''enregistrement sélectionné.',
                                ENC='View the history of transactions that have been posted for the selected record.';
                }
                action(Statistics)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Statistics',
                                ESM='Estadísticas',
                                FRC='Statistiques',
                                ENC='Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Process;
                    RunObject = Page "Vendor Statistics";
                    RunPageLink = "No."=FIELD("No."),
                                  "Date Filter"=FIELD("Date Filter"),
                                  "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                                  "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
                    ShortCutKey = 'F7';
                    ToolTipML = ENU='View statistical information, such as the value of posted entries, for the record.',
                                ESM='Permite ver información estadística del registro, como el valor de los movimientos registrados.',
                                FRC='Affichez les informations statistiques telles que la valeur des écritures reportées pour l''enregistrement.',
                                ENC='View statistical information, such as the value of posted entries, for the record.';
                }
                action(Purchases)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Purchases',
                                ESM='Compras',
                                FRC='Achats',
                                ENC='Purchases';
                    Image = Purchase;
                    RunObject = Page "Vendor Purchases";
                    RunPageLink = "No."=FIELD("No."),
                                  "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                                  "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
                    ToolTipML = ENU='Shows a summary of vendor ledger entries. You select the time interval in the View by field. The Period column on the left contains a series of dates that are determined by the time interval you have selected.',
                                ESM='Muestra un resumen de movimientos del proveedor. El intervalo de tiempo se selecciona en el campo Ver por. La columna Periodo, a la izquierda, contiene una serie de fechas que se determinan mediante el intervalo de tiempo que se haya seleccionado.',
                                FRC='Affiche un récapitulatif des écritures fournisseur. Sélectionnez l''intervalle de temps dans le champ Afficher par. La colonne Période située à gauche affiche une série de dates qui sont déterminées par l''intervalle de temps que vous avez sélectionné.',
                                ENC='Shows a summary of vendor ledger entries. You select the time interval in the View by field. The Period column on the left contains a series of dates that are determined by the time interval you have selected.';
                }
                action("Entry Statistics")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Entry Statistics',
                                ESM='Estadísticas documentos',
                                FRC='Statistiques écritures',
                                ENC='Entry Statistics';
                    Image = EntryStatistics;
                    RunObject = Page "Vendor Entry Statistics";
                    RunPageLink = "No."=FIELD("No."),
                                  "Date Filter"=FIELD("Date Filter"),
                                  "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                                  "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
                    ToolTipML = ENU='View entry statistics for the record.',
                                ESM='Permite ver estadísticas de movimientos para el registro.',
                                FRC='Afficher les statistiques écritures de l''enregistrement.',
                                ENC='View entry statistics for the record.';
                }
                action("1099 Statistics")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='1099 Statistics',
                                ESM='Estad. form. 1099',
                                FRC='Statistiques 1099',
                                ENC='1099 Statistics';
                    Image = Statistics1099;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedOnly = true;
                    RunObject = Page "Vendor 1099 Statistics";
                    RunPageLink = "No."=FIELD("No.");
                    ShortCutKey = 'Shift+F11';
                    ToolTipML = ENU='View the vendor 1099 statistics that you can use to create 1099 reports and generate the files necessary to submit 1099 information to the Internal Revenue Service (IRS). This information is required to report paid vendor income.',
                                ESM='Permite ver las estadísticas de proveedor del formulario 1099, que puede usar para crear informes 1099 y generar los archivos necesarios para enviar la información del formulario 1099 al Servicio de Impuestos Internos (IRS). Esta información es necesaria para declarar los ingresos pagados de los proveedores.',
                                FRC='Affichez les statistiques Fournisseur 1099 que vous pouvez utiliser pour créer des rapports 1099 et générer les fichiers nécessaires pour soumettre des renseignements 1099 à l''IRS (Internal Revenue Service). Ces renseignements sont nécessaires pour déclarer les revenus payés par les fournisseurs.',
                                ENC='View the vendor 1099 statistics that you can use to create 1099 reports and generate the files necessary to submit 1099 information to the Internal Revenue Service (IRS). This information is required to report paid vendor income.';
                }
                action("Statistics by C&urrencies")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Statistics by C&urrencies',
                                ESM='Estadísticas por di&visas',
                                FRC='Statistiques par d&evises',
                                ENC='Statistics by C&urrencies';
                    Image = Currencies;
                    RunObject = Page "Vend. Stats. by Curr. Lines";
                    RunPageLink = "Vendor Filter"=FIELD("No."),
                                  "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                                  "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter"),
                                  "Date Filter"=FIELD("Date Filter");
                    ToolTipML = ENU='View statistics for vendors that use multiple currencies.',
                                ESM='Permite ver estadísticas de los proveedores que utilizan varias monedas.',
                                FRC='Afficher les statistiques pour les fournisseurs qui utilisent plusieurs devises.',
                                ENC='View statistics for vendors that use multiple currencies.';
                }
                action("Item &Tracking Entries")
                {
                    ApplicationArea = ItemTracking;
                    CaptionML = ENU='Item &Tracking Entries',
                                ESM='Movs. &seguim. prod.',
                                FRC='Écritures de &traçabilité',
                                ENC='Item &Tracking Entries';
                    Image = ItemTrackingLedger;
                    ToolTipML = ENU='View serial or lot numbers that are assigned to items.',
                                ESM='Permite ver los números de serie o de lote que se asignan a los productos.',
                                FRC='Afficher les numéros de série et de lot qui sont affectés aux articles.',
                                ENC='View serial or lot numbers that are assigned to items.';

                    trigger OnAction();
                    var
                        ItemTrackingDocMgt : Codeunit "Item Tracking Doc. Management";
                    begin
                        ItemTrackingDocMgt.ShowItemTrackingForMasterData(2,"No.",'','','','','');
                    end;
                }
            }
        }
        area(creation)
        {
            action(NewBlanketPurchaseOrder)
            {
                ApplicationArea = Advanced;
                CaptionML = ENU='Blanket Purchase Order',
                            ESM='Pedido abierto compra',
                            FRC='Commande permanente achats',
                            ENC='Blanket Purchase Order';
                Image = BlanketOrder;
                RunObject = Page "Blanket Purchase Order";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new blanket purchase order for the vendor.',
                            ESM='Crear un pedido de compra abierto nuevo para el proveedor.',
                            FRC='Créer une commande ouverte achat pour le fournisseur.',
                            ENC='Create a new blanket purchase order for the vendor.';
            }
            action(NewPurchaseQuote)
            {
                ApplicationArea = Advanced;
                CaptionML = ENU='Purchase Quote',
                            ESM='Cotización compra',
                            FRC='Devis d''achat',
                            ENC='Purchase Quote';
                Image = Quote;
                RunObject = Page "Purchase Quote";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase quote for the vendor.',
                            ESM='Crea una nueva cotización de compra para el proveedor.',
                            FRC='Créez un devis pour le fournisseur.',
                            ENC='Create a new purchase quote for the vendor.';
            }
            action(NewPurchaseInvoice)
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Purchase Invoice',
                            ESM='Factura compra',
                            FRC='Facture d''achat',
                            ENC='Purchase Invoice';
                Image = NewPurchaseInvoice;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedOnly = true;
                RunObject = Page "Purchase Invoice";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase invoice for items or services.',
                            ESM='Permite crear una nueva factura de compra de productos o servicios.',
                            FRC='Créez une facture achat pour les articles ou les services.',
                            ENC='Create a new purchase invoice for items or services.';
            }
            action(NewPurchaseOrder)
            {
                ApplicationArea = Suite;
                CaptionML = ENU='Purchase Order',
                            ESM='Pedido compra',
                            FRC='Bon de commande',
                            ENC='Purchase Order';
                Image = Document;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedOnly = true;
                RunObject = Page "Purchase Order";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase order.',
                            ESM='Crea un nuevo pedido de compra.',
                            FRC='Créez un bon de commande.',
                            ENC='Create a new purchase order.';
            }
            action(NewPurchaseCrMemo)
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Purchase Credit Memo',
                            ESM='Nota crédito compra',
                            FRC='Note de crédit d''achat',
                            ENC='Purchase Credit Memo';
                Image = CreditMemo;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedOnly = true;
                RunObject = Page "Purchase Credit Memo";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase credit memo to revert a posted purchase invoice.',
                            ESM='Permite crear una nueva nota de crédito de compra para revertir una factura de compra registrada.',
                            FRC='Créez une note de crédit achat pour rétablir une facture achat reportée.',
                            ENC='Create a new purchase credit memo to revert a posted purchase invoice.';
            }
            action(NewPurchaseReturnOrder)
            {
                ApplicationArea = PurchReturnOrder;
                CaptionML = ENU='Purchase Return Order',
                            ESM='Devolución compra',
                            FRC='Retour achat',
                            ENC='Purchase Return Order';
                Image = ReturnOrder;
                RunObject = Page "Purchase Return Order";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase return order for the vendor.',
                            ESM='Cree un pedido de devolución de compras nuevo para el proveedor.',
                            FRC='Créer un retour commande achat pour le fournisseur.',
                            ENC='Create a new purchase return order for the vendor.';
            }
        }
        area(processing)
        {
            group("Request Approval")
            {
                CaptionML = ENU='Request Approval',
                            ESM='Aprobación solic.',
                            FRC='Approbation de demande',
                            ENC='Request Approval';
                Image = SendApprovalRequest;
                action(SendApprovalRequest)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Send A&pproval Request',
                                ESM='Enviar solicitud a&probación',
                                FRC='Envoyer demande d''a&pprobation',
                                ENC='Send A&pproval Request';
                    Enabled = NOT OpenApprovalEntriesExist AND CanRequestApprovalForFlow;
                    Image = SendApprovalRequest;
                    ToolTipML = ENU='Request approval to change the record.',
                                ESM='Permite solicitar aprobación para cambiar el registro.',
                                FRC='Demander l''approbation pour modifier l''enregistrement.',
                                ENC='Request approval to change the record.';

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                      /*   if ApprovalsMgmt.CheckVendorApprovalsWorkflowEnabled(Rec) then
                          ApprovalsMgmt.OnSendVendorForApproval(Rec); */
                    end;
                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Cancel Approval Re&quest',
                                ESM='&Cancelar solicitud aprobación',
                                FRC='Annuler demande d''appro&bation',
                                ENC='Cancel Approval Re&quest';
                    Enabled = CanCancelApprovalForRecord OR CanCancelApprovalForFlow;
                    Image = CancelApprovalRequest;
                    ToolTipML = ENU='Cancel the approval request.',
                                ESM='Cancela la solicitud de aprobación.',
                                FRC='Annulez la demande d''approbation.',
                                ENC='Cancel the approval request.';

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                        /* ApprovalsMgmt.OnCancelVendorApprovalRequest(Rec);
                        WorkflowWebhookManagement.FindAndCancel(RECORDID); */
                    end;
                }
            }
            action("Payment Journal")
            {
                ApplicationArea = Advanced;
                CaptionML = ENU='Payment Journal',
                            ESM='Diario de pagos',
                            FRC='Journal des paiements',
                            ENC='Payment Journal';
                Image = PaymentJournal;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Payment Journal";
                ToolTipML = ENU='View or edit the payment journal where you can register payments to vendors.',
                            ESM='Permite ver o editar el diario de pagos en el que se pueden registrar los pagos a proveedores.',
                            FRC='Affichez ou modifiez le journal paiement où vous pouvez enregistrer les paiements aux fournisseurs.',
                            ENC='View or edit the payment journal where you can register payments to vendors.';
            }
            action("Purchase Journal")
            {
                ApplicationArea = Advanced;
                CaptionML = ENU='Purchase Journal',
                            ESM='Diario compras',
                            FRC='Journal des achats',
                            ENC='Purchase Journal';
                Image = Journals;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Purchase Journal";
                ToolTipML = ENU='Post any purchase transaction for the vendor. ',
                            ESM='Registrar todas las transacciones de compras para el proveedor. ',
                            FRC='Reportez une transaction d''achat pour le fournisseur. ',
                            ENC='Post any purchase transaction for the vendor. ';
            }
            group(Functions)
            {
                CaptionML = ENU='Functions',
                            ESM='Acciones',
                            FRC='Fonctions',
                            ENC='Functions';
                action(AssignTaxArea)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Assign Tax Area',
                                ESM='Asignar área impuesto ventas',
                                FRC='Affecter une région fiscale',
                                ENC='Assign Tax Area';
                    Image = RefreshText;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedOnly = true;
                    RunObject = Report "Assign Tax Area to Vendor";
                    ToolTipML = ENU='Assign a tax area to the customer to manage sales tax.',
                                ESM='Permite asignar un área de impuesto al cliente para administrar el impuesto sobre las ventas.',
                                FRC='Assignez une région fiscale au client pour gérer la taxe de vente.',
                                ENC='Assign a tax area to the customer to manage sales tax.';
                }
            }
            action(ApplyTemplate)
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Apply Template',
                            ESM='Aplicar plantilla',
                            FRC='Appliquer modèle',
                            ENC='Apply Template';
                Ellipsis = true;
                Image = ApplyTemplate;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ToolTipML = ENU='Apply a template to update one or more entities with your standard settings for a certain type of entity.',
                            ESM='Permite aplicar una plantilla para actualizar una o más entidades con su configuración estándar para un determinado tipo de entidad.',
                            FRC='Appliquez un modèle pour mettre à jour une ou plusieurs entités avec vos paramètres standard pour un certain type d''entité.',
                            ENC='Apply a template to update one or more entities with your standard settings for a certain type of entity.';

                trigger OnAction();
                var
                    Vendor : Record Vendor;
                    MiniVendorTemplate : Record "Mini Vendor Template";
                begin
                    CurrPage.SETSELECTIONFILTER(Vendor);
                    MiniVendorTemplate.UpdateVendorsFromTemplate(Vendor);
                end;
            }
            group(Display)
            {
                CaptionML = ENU='Display',
                            ESM='Mostrar',
                            FRC='Afficher',
                            ENC='Display';
                action(ReportFactBoxVisibility)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Show/Hide Power BI Reports',
                                ESM='Mostrar u ocultar informes de Power BI',
                                FRC='Afficher/masquer les rapports Power BI',
                                ENC='Show/Hide Power BI Reports';
                    Image = "Report";
                    ToolTipML = ENU='Select if the Power BI FactBox is visible or not.',
                                ESM='Seleccione si el cuadro informativo de informe de Power BI es visible o no.',
                                FRC='Choisir si le récapitulatif État Power BI est visible ou non.',
                                ENC='Select if the Power BI FactBox is visible or not.';

                    trigger OnAction();
                    begin
                        if PowerBIVisible then
                          PowerBIVisible := false
                        else
                          PowerBIVisible := true;
                        // save visibility value into the table
                        //CurrPage."Power BI Report FactBox".PAGE.SetFactBoxVisibility(PowerBIVisible);
                    end;
                }
            }
            group(OCR)
            {
                CaptionML = ENU='OCR',
                            ESM='OCR',
                            FRC='OCR',
                            ENC='OCR';
                action(Resync)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Resync all Vendors',
                                ESM='Resincronizar todos los proveedores',
                                FRC='Resynchroniser tous les fournisseurs',
                                ENC='Resync all Vendors';
                    Image = CopyFromChartOfAccounts;
                    Promoted = true;
                    PromotedCategory = Process;
                    ToolTipML = ENU='Synchronize vendors and vendor bank accounts with the OCR service.',
                                ESM='Permite sincronizar los proveedores y las cuentas bancarias de proveedor con el servicio de OCR.',
                                FRC='Synchroniser les fournisseurs et comptes bancaires fournisseur avec le service OCR.',
                                ENC='Synchronize vendors and vendor bank accounts with the OCR service.';
                    Visible = ResyncVisible;

                    trigger OnAction();
                    begin
                        ReadSoftOCRMasterDataSync.SyncMasterData(true,false);
                    end;
                }
            }
        }
        area(reporting)
        {
            action("Vendor - Listing")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Vendor - Listing',
                            ESM='Proveedor - Listado',
                            FRC='Fournisseurs - Liste',
                            ENC='Vendor - Listing';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                RunObject = Report "Vendor - Listing";
                ToolTipML = ENU='View quick-reference information about vendor accounts and balances.',
                            ESM='Permite ver una referencia rápida de la información sobre las cuentas y los saldos de los proveedores.',
                            FRC='Affichez des références rapides sur les soldes et les comptes fournisseur.',
                            ENC='View quick-reference information about vendor accounts and balances.';
            }
            group(General)
            {
                CaptionML = ENU='General',
                            ESM='General',
                            FRC='Général',
                            ENC='General';
                Image = "Report";
                action("Vendor Register")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Vendor Register',
                                ESM='Registro movs. proveedor',
                                FRC='Registre des fournisseurs',
                                ENC='Vendor Register';
                    Image = "Report";
                    RunObject = Report "AP - Vendor Register";
                    ToolTipML = ENU='View vendor ledger entries that have been posted in connection with a general ledger register. The entries are divided into, and sorted according to, G/L registers. By using a filter, you can select exactly the entries in the registers that you need to see. The report can be used to document the contents of the various registers for internal or external audits.',
                                ESM='Mostrar los movimientos de proveedores que han sido registrados en relación con un registro de contabilidad general. Los movimientos se agrupan y se ordenan según los registros de contabilidad. Si usa un filtro, puede seleccionar exactamente los movimientos de los registros que desea ver. El informe puede servir para documentar el contenido de varios registros con vistas a auditorías internas o externas.',
                                FRC='Affichez les écritures fournisseur reportées en association avec un registre grand livre. Les écritures sont réparties et triées selon les registres GL. ‡ l''aide d''un filtre, vous pouvez sélectionner exactement les écritures des registres que vous souhaitez visualiser. Ce rapport peut être utilisé pour documenter le contenu des divers registres pour des audits internes ou externes.',
                                ENC='View vendor ledger entries that have been posted in connection with a general ledger register. The entries are divided into, and sorted according to, G/L registers. By using a filter, you can select exactly the entries in the registers that you need to see. The report can be used to document the contents of the various registers for internal or external audits.';
                }
                action("Vendor - Labels")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Vendor - Labels',
                                ESM='Proveedor - Etiquetas',
                                FRC='Fournisseur - Étiquettes',
                                ENC='Vendor - Labels';
                    Image = "Report";
                    RunObject = Report "Vendor Labels";
                    ToolTipML = ENU='View mailing labels with the vendors'' names and addresses.',
                                ESM='Permite ver etiquetas de correo con los nombres y las direcciones de los proveedores.',
                                FRC='Afficher des étiquettes de routage comportant le nom et l''adresse des fournisseurs.',
                                ENC='View mailing labels with the vendors'' names and addresses.';
                }
                action("Vendor - Trial Balance")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU='Vendor - Trial Balance',
                                ESM='Proveedor - Balance sumas y saldos',
                                FRC='Fournisseur - Balance de vérification',
                                ENC='Vendor - Trial Balance';
                    Image = "Report";
                    RunObject = Report "Vendor - Trial Balance";
                    ToolTipML = ENU='View the beginning and ending balance for vendors with entries within a specified period. The report can be used to verify that the balance for a vendor posting group is equal to the balance on the corresponding general ledger account on a certain date.',
                                ESM='Permite ver el saldo inicial y final de los proveedores que tienen movimientos en un período especificado. El informe se puede utilizar para comprobar que el saldo de un grupo contable de proveedor es igual al saldo de la cuenta de contabilidad correspondiente en una determinada fecha.',
                                FRC='Affichez le solde d''ouverture et final pour les fournisseurs présentant des écritures au cours d''une période spécifiée. Le rapport peut être utilisé pour vérifier que le solde pour un groupe de report fournisseur est égal à celui du compte GL correspondant à une certaine date.',
                                ENC='View the beginning and ending balance for vendors with entries within a specified period. The report can be used to verify that the balance for a vendor posting group is equal to the balance on the corresponding general ledger account on a certain date.';
                }
                action("Aged Accounts Payable")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Aged Accounts Payable',
                                ESM='Antigüedad pagos',
                                FRC='Comptes fournisseurs classés chronologiquement',
                                ENC='Aged Accounts Payable';
                    Image = "Report";
                    RunObject = Report "Aged Accounts Payable";
                    ToolTipML = ENU='View a list of aged remaining balances for each vendor.',
                                ESM='Permite ver una lista de saldos pendientes vencidos de cada proveedor.',
                                FRC='Affichez une liste des soldes restants classés chronologiquement pour chaque fournisseur.',
                                ENC='View a list of aged remaining balances for each vendor.';
                }
                action("Vendor Account Detail")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor Account Detail',
                                ESM='Detalle cta. prov.',
                                FRC='Détail du compte fournisseur',
                                ENC='Vendor Account Detail';
                    Image = "Report";
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = "Report";
                    RunObject = Report "Vendor Account Detail";
                    ToolTipML = ENU='View the detailed account activity for each vendor for a specific period of time. The report lists all activity with running account balances, or only open items or only closed items with totals of either. The report can also show the application of payments to invoices.',
                                ESM='Permite ver información detallada sobre la actividad de las cuentas de cada proveedor en un período específico. El informe enumera toda la actividad con saldos de cuenta actuales, o muestra solo los productos pendientes o solo los elementos cerrados con los totales. También puede mostrar los pagos efectuados a cuenta de facturas.',
                                FRC='Affichez l''activité détaillée des comptes de chaque fournisseur pour une période spécifique. Le rapport répertorie toutes les activités avec soldes de comptes courants, ou uniquement les articles ouverts ou uniquement les articles fermés avec totaux de l''un ou l''autre. Le rapport peut aussi afficher l''affectation de paiements à des factures.',
                                ENC='View the detailed account activity for each vendor for a specific period of time. The report lists all activity with running account balances, or only open items or only closed items with totals of either. The report can also show the application of payments to invoices.';
                }
                action("Open Vendor Entries")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Open Vendor Entries',
                                ESM='Movs. pendientes de proveedor',
                                FRC='Écritures fournisseurs ouvertes',
                                ENC='Open Vendor Entries';
                    Image = "Report";
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = "Report";
                    RunObject = Report "Open Vendor Entries";
                    ToolTipML = ENU='View open vendor entries. This report lists the open entries for each vendor, and shows the age (days overdue) and remaining amount due in the transaction currency for each open entry.',
                                ESM='Permite ver los movimientos pendientes de los proveedores. Este informe enumera los movimientos pendientes de cada proveedor y muestra su antigüedad (días de retraso) y el importe pendiente, en la divisa de la transacción, de cada movimiento pendiente.',
                                FRC='Affichez les écritures fournisseur ouvertes. Ce rapport répertorie les écritures ouvertes pour chaque fournisseur, et affiche l''ancienneté (jours en souffrance) et le montant ouvert dû dans la devise de transaction pour chaque écriture ouverte.',
                                ENC='View open vendor entries. This report lists the open entries for each vendor, and shows the age (days overdue) and remaining amount due in the transaction currency for each open entry.';
                }
                action("Vendor Item Catalog")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU='Vendor Item Catalog',
                                ESM='Lista productos proveedores',
                                FRC='Catalogue d''articles fournisseur',
                                ENC='Vendor Item Catalogue';
                    Image = "Report";
                    RunObject = Report "Item/Vendor Catalog";
                    ToolTipML = ENU='View a list of the items that your vendors supply.',
                                ESM='Permite ver una lista de los productos que suministran los proveedores.',
                                FRC='Affichez une liste des articles que vos fournisseurs proposent.',
                                ENC='View a list of the items that your vendors supply.';
                }
                action("Vendor 1099 Div")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor 1099 Div',
                                ESM='Form. prov. 1099 Div',
                                FRC='Fournisseur div 1099',
                                ENC='Vendor 1099 Div';
                    Image = "Report";
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = "Report";
                    RunObject = Report "Vendor 1099 Div";
                    ToolTipML = ENU='View the federal form 1099-DIV for dividends and distribution.',
                                ESM='Permite ver el formulario federal 1099-DIV para dividendos y distribución.',
                                FRC='Affichez le formulaire fédéral DIV 1099 pour les dividendes et la distribution.',
                                ENC='View the federal form 1099-DIV for dividends and distribution.';
                }
                action("Vendor 1099 Information")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor 1099 Information',
                                ESM='Inf. form. prov. 1099',
                                FRC='Fournisseur information 1099',
                                ENC='Vendor 1099 Information';
                    Image = "Report";
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = "Report";
                    RunObject = Report "Vendor 1099 Information";
                    ToolTipML = ENU='View the vendors'' 1099 information. The report includes all 1099 information for the vendors that have been set up using the IRS 1099 Form-Box table. This includes only amounts that have been paid. It does not include amounts billed but not yet paid. You must enter a date filter before you can print this report.',
                                ESM='Permite ver la información del formulario 1099 de los proveedores. El informe incluye toda la información del formulario 1099 de los proveedores configurados mediante la tabla Form. IRS 1099-Campo. Incluye únicamente los importes pagados, no los importes facturados, pero no pagados aún. Debe especificar un filtro de fechas para poder imprimir este informe.',
                                FRC='Affichez les renseignements 1099 des fournisseurs. Le rapport inclut toutes les informations 1099 des fournisseurs qui ont été configurés à l''aide de la table Case du formulaire IRS 1099. Il n''inclut que les montants qui ont été payés. Il n''inclut pas les montants facturés mais pas encore payés. Vous devez entrer un filtre date avant de pouvoir imprimer ce rapport.',
                                ENC='View the vendors'' 1099 information. The report includes all 1099 information for the vendors that have been set up using the IRS 1099 Form-Box table. This includes only amounts that have been paid. It does not include amounts billed but not yet paid. You must enter a date filter before you can print this report.';
                }
                action("Vendor 1099 Int")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor 1099 Int',
                                ESM='Form. prov. 1099 Int',
                                FRC='Fournisseur int 1099',
                                ENC='Vendor 1099 Int';
                    Image = "Report";
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = "Report";
                    RunObject = Report "Vendor 1099 Int";
                    ToolTipML = ENU='View the federal form 1099-INT for interest income.',
                                ESM='Permite ver el formulario federal 1099-INT para ingresos por intereses.',
                                FRC='Affichez le formulaire fédéral INT 1099 pour les revenus en intérêts.',
                                ENC='View the federal form 1099-INT for interest income.';
                }
                action("Vendor 1099 Misc")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor 1099 Misc',
                                ESM='Form. prov. 1099 Misc',
                                FRC='Fournisseur divers 1099',
                                ENC='Vendor 1099 Misc';
                    Image = "Report";
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = "Report";
                    RunObject = Report "Vendor 1099 Misc";
                    ToolTipML = ENU='View the federal form 1099-MISC for miscellaneous income.',
                                ESM='Permite ver el formulario federal 1099-MISC para ingresos varios.',
                                FRC='Affichez le formulaire fédéral MISC 1099 pour les revenus divers.',
                                ENC='View the federal form 1099-MISC for miscellaneous income.';
                }
                action("Vendor - Top 10 List")
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU='Vendor - Top 10 List',
                                ESM='Proveedor - Listado 10 mejores',
                                FRC='Fournisseur - Liste des 10 meilleurs',
                                ENC='Vendor - Top 10 List';
                    Image = "Report";
                    RunObject = Report "Top __ Vendor List";
                    ToolTipML = ENU='View a list of the vendors from whom you purchase the most or to whom you owe the most.',
                                ESM='Permite ver una lista de los proveedores a quienes más se compra o se debe.',
                                FRC='Afficher la liste des fournisseurs auprès desquels vous effectuez le plus d''achats et à qui vous devez le plus d''argent.',
                                ENC='View a list of the vendors from whom you purchase the most or to whom you owe the most.';
                }
            }
            group(ActionGroup5)
            {
                CaptionML = ENU='Orders',
                            ESM='Pedidos',
                            FRC='Commandes',
                            ENC='Orders';
                Image = "Report";
                action("Vendor - Order Summary")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Vendor - Order Summary',
                                ESM='Proveedor - Total pedidos',
                                FRC='Fournisseur - Sommaire de commande',
                                ENC='Vendor - Order Summary';
                    Image = "Report";
                    RunObject = Report "Outstanding Purch. Order Aging";
                    ToolTipML = ENU='View the order detail (the quantity not yet received) for each vendor in three periods of 30 days each, starting from a selected date. There are also columns with orders before and after the three periods and a column with the total order detail for each vendor. The report can be used to analyze a company''s expected purchase volume.',
                                ESM='Mostrar el desglose de los pedidos (la cantidad aún no recibida) de cada proveedor en tres periodos consecutivos de 30 días cada uno, a partir de una fecha seleccionada. Existen también columnas con pedidos anteriores y posteriores a los tres periodos, así como otra con el total de líneas de pedidos por proveedor. Utilice el informe para analizar el volumen de compras previsto por la empresa.',
                                FRC='Affichez le détail de la commande (la quantité pas encore réceptionnée) de chaque fournisseur sur trois périodes de 30 jours chacune commençant à une date sélectionnée. Le document contient également des colonnes avec les commandes antérieures et ultérieures aux trois périodes et une colonne avec le détail de la commande totale de chaque fournisseur. Ce rapport peut être utilisé pour analyser le volume d''achat attendu d''une compagnie.',
                                ENC='View the order detail (the quantity not yet received) for each vendor in three periods of 30 days each, starting from a selected date. There are also columns with orders before and after the three periods and a column with the total order detail for each vendor. The report can be used to analyse a company''s expected purchase volume.';
                }
                action("Vendor - Order Detail")
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Vendor - Order Detail',
                                ESM='Proveedor - Líneas pedidos',
                                FRC='Fournisseur - Détail de commande',
                                ENC='Vendor - Order Detail';
                    Image = "Report";
                    RunObject = Report "Outstanding Order Stat. by PO";
                    ToolTipML = ENU='View a list of items that have been ordered, but not yet received, from each vendor. The order amounts are totaled for each vendor and for the entire list. The report can be used, for example, to obtain an overview of purchases over the short term or to analyze possible receipt problems.',
                                ESM='Mostrar una lista de productos de cada proveedor pedidos pero no recibidos. Se obtiene un total de importes de pedidos de la lista completa y de subtotales por proveedor. Utilice el informe, por ejemplo, para tener una visión general de las compras a corto plazo o para analizar posibles problemas de recepción.',
                                FRC='Affichez la liste des articles commandés, mais qui n''ont pas encore été reçus de chaque fournisseur. Les montants des commandes sont totalisés pour chaque fournisseur et pour la liste entière. Le rapport peut être utilisé, par exemple, pour obtenir un aperçu des achats à court terme ou pour analyser les problèmes de réception possibles.',
                                ENC='View a list of items that have been ordered, but not yet received, from each vendor. The order amounts are totalled for each vendor and for the entire list. The report can be used, for example, to obtain an overview of purchases over the short term or to analyse possible receipt problems.';
                }
            }
            group(Purchase)
            {
                CaptionML = ENU='Purchase',
                            ESM='Compra',
                            FRC='Achat',
                            ENC='Purchase';
                Image = Purchase;
                action("Vendor - Purchase List")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor - Purchase List',
                                ESM='Proveedor - Lista compras',
                                FRC='Fournisseur - Liste d''achats',
                                ENC='Vendor - Purchase List';
                    Image = "Report";
                    RunObject = Report "Vendor - Purchase List";
                    ToolTipML = ENU='View a list of vendor purchases for a selected period.',
                                ESM='Permite ver una lista de compras de proveedores en un período seleccionado.',
                                FRC='Affichez une liste d''achats fournisseur pour une période sélectionnée.',
                                ENC='View a list of vendor purchases for a selected period.';
                }
                action("Vendor/Item Purchases")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Vendor/Item Purchases',
                                ESM='Compras prov./producto',
                                FRC='Achats fournisseur/article',
                                ENC='Vendor/Item Purchases';
                    Image = "Report";
                    RunObject = Report "Vendor/Item Statistics";
                    ToolTipML = ENU='View a list of item entries for each vendor in a selected period.',
                                ESM='Permite ver una lista de movimientos de producto de cada proveedor durante un período determinado.',
                                FRC='Affichez une liste des écritures article de chaque fournisseur durant une période sélectionnée.',
                                ENC='View a list of item entries for each vendor in a selected period.';
                }
                action("Purchase Statistics")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Purchase Statistics',
                                ESM='Estadísticas compras',
                                FRC='Statistiques d''achat',
                                ENC='Purchase Statistics';
                    Image = "Report";
                    RunObject = Report "Vendor Purchase Statistics";
                    ToolTipML = ENU='View a list of amounts for purchases, invoice discount and payment discount in $ for each vendor.',
                                ESM='Permite ver una lista de importes de compras, descuentos en factura y descuentos por pronto pago en USD de cada proveedor.',
                                FRC='Affichez une liste des montants des achats, des escomptes facture et des escomptes de paiement en $ pour chaque fournisseur.',
                                ENC='View a list of amounts for purchases, invoice discount and payment discount in $ for each vendor.';
                }
            }
            group("Financial Management")
            {
                CaptionML = ENU='Financial Management',
                            ESM='Gestión financiera',
                            FRC='Gestion financière',
                            ENC='Financial Management';
                Image = "Report";
            }
        }
    }

    trigger OnAfterGetCurrRecord();
    begin
        SetSocialListeningFactboxVisibility;
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(RECORDID);

        CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(RECORDID);

        WorkflowWebhookManagement.GetCanRequestAndCanCancel(RECORDID,CanRequestApprovalForFlow,CanCancelApprovalForFlow);

        // Contextual Power BI FactBox: send data to filter the report in the FactBox
        //CurrPage."Power BI Report FactBox".PAGE.SetCurrentListSelection("No.",false);
    end;

    trigger OnInit();
    begin
        SetVendorNoVisibilityOnFactBoxes;
    end;

    trigger OnOpenPage();
    begin
        // Contextual Power BI FactBox: filtering available reports, setting context, loading Power BI related user settings
        /* CurrPage."Power BI Report FactBox".PAGE.SetNameFilter(CurrPage.CAPTION);
        CurrPage."Power BI Report FactBox".PAGE.SetContext(CurrPage.OBJECTID(false));
        PowerBIVisible := SetPowerBIUserConfig.SetUserConfig(PowerBIUserConfiguration,CurrPage.OBJECTID(false)); */

        ResyncVisible := ReadSoftOCRMasterDataSync.IsSyncEnabled;
    end;

    var
        PowerBIUserConfiguration : Record "Power BI User Configuration";
        SetPowerBIUserConfig : Codeunit "Set Power BI User Config";
        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
        ReadSoftOCRMasterDataSync : Codeunit "ReadSoft OCR Master Data Sync";
        WorkflowWebhookManagement : Codeunit "Workflow Webhook Management";
        [InDataSet]
        SocialListeningSetupVisible : Boolean;
        [InDataSet]
        SocialListeningVisible : Boolean;
        OpenApprovalEntriesExist : Boolean;
        CanCancelApprovalForRecord : Boolean;
        PowerBIVisible : Boolean;
        ResyncVisible : Boolean;
        CanRequestApprovalForFlow : Boolean;
        CanCancelApprovalForFlow : Boolean;

    [Scope('Personalization')]
    procedure GetSelectionFilter() : Text;
    var
        Vend : Record Vendor;
        SelectionFilterManagement : Codeunit SelectionFilterManagement;
    begin
        CurrPage.SETSELECTIONFILTER(Vend);
        exit(SelectionFilterManagement.GetSelectionFilterForVendor(Vend));
    end;

    [Scope('Personalization')]
    procedure SetSelection(var Vend : Record Vendor);
    begin
        CurrPage.SETSELECTIONFILTER(Vend);
    end;

    local procedure SetSocialListeningFactboxVisibility();
    var
        SocialListeningMgt : Codeunit "Social Listening Management";
    begin
        //SocialListeningMgt.GetVendFactboxVisibility(Rec,SocialListeningSetupVisible,SocialListeningVisible);
    end;

    local procedure SetVendorNoVisibilityOnFactBoxes();
    begin
        CurrPage.VendorDetailsFactBox.PAGE.SetVendorNoVisibility(false);
        CurrPage.VendorHistBuyFromFactBox.PAGE.SetVendorNoVisibility(false);
        CurrPage.VendorHistPayToFactBox.PAGE.SetVendorNoVisibility(false);
        CurrPage.VendorStatisticsFactBox.PAGE.SetVendorNoVisibility(false);
    end;
}

