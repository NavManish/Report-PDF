page 50109 "Vendor Card Extension"
{
    // version NAVW111.00.00.21441,NAVNA11.00.00.21441

    CaptionML = ENU='Vendor Card',
                ESM='Ficha proveedor',
                FRC='Fiche fournisseur',
                ENC='Vendor Card';
    PageType = Card;
    PromotedActionCategoriesML = ENU='New,Process,Report,Approve,Request Approval,New Document,Navigate,Incoming Documents',
                                 ESM='Nuevo,Procesar,Informar,Aprobar,Solicitar aprobación,Nuevo documento,Navegar,Documentos entrantes',
                                 FRC='Nouveau,Traitement,Rapport,Approuver,Demande d''approbation,Nouveau document,Naviguer,Documents entrants',
                                 ENC='New,Process,Report,Approve,Request Approval,New Document,Navigate,Incoming Documents';
    RefreshOnActivate = true;
    SourceTable = "Vendor Extension";

    layout
    {
        area(content)
        {
            group(General)
            {
                CaptionML = ENU='General',
                            ESM='General',
                            FRC='Général',
                            ENC='General';
                field("No.";"No.")
                {
                    ApplicationArea = All;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the number of the involved entry or record, according to the specified number series.',
                                ESM='Especifica el número de la entrada o el registro relacionado, según la serie numérica especificada.',
                                FRC='Spécifie le numéro de l''écriture ou de l''enregistrement concerné, en fonction de la série de numéros spécifiée.',
                                ENC='Specifies the number of the involved entry or record, according to the specified number series.';
                    Visible = NoFieldVisible;

                    trigger OnAssistEdit();
                    begin
                        
                    end;
                }
                field(Name;Name)
                {
                    ApplicationArea = All;
                    Importance = Promoted;
                    ShowMandatory = true;
                    ToolTipML = ENU='Specifies the vendor''s name. You can enter a maximum of 30 characters, both numbers and letters.',
                                ESM='Especifica el nombre del proveedor. Se pueden escribir un máximo de 30 caracteres, tanto números como letras.',
                                FRC='Spécifie le nom du fournisseur. Vous pouvez entrer au maximum 30 caractères, des chiffres et des lettres.',
                                ENC='Specifies the vendor''s name. You can enter a maximum of 30 characters, both numbers and letters.';
                }
                field(Blocked;Blocked)
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.',
                                ESM='Especifica que se ha bloqueado el registro relacionado para que no se registre en transacciones, por ejemplo, en el caso de un cliente que ha sido declarado insolvente o de un elemento que se encuentra en cuarentena.',
                                FRC='Spécifie que la validation de l''enregistrement associé dans les transactions est bloquée, par exemple un client est déclaré insolvable ou un article est placé en quarantaine.',
                                ENC='Specifies that the related record is blocked from being posted in transactions, for example a customer that is declared insolvent or an item that is placed in quarantine.';
                }
                field("Privacy Blocked";"Privacy Blocked")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies whether to limit access to data for the data subject during daily operations. This is useful, for example, when protecting data from changes while it is under privacy review.',
                                ESM='Especifica si desea limitar el acceso a los datos del interesado durante las operaciones diarias. Esto es útil, por ejemplo, cuando desea proteger los datos para que no se introduzcan cambios mientras se encuentran en revisión de privacidad.',
                                FRC='Spécifie si l''accès aux données doit être limité pour l''objet de données pendant les opérations quotidiennes. Cela est utile, par exemple, pour empêcher toute modification des données lorsqu''elles sont en cours de révision.',
                                ENC='Specifies whether to limit access to data for the data subject during daily operations. This is useful, for example, when protecting data from changes while it is under privacy review.';
                }
                field("Last Date Modified";"Last Date Modified")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies when the vendor card was last modified.',
                                ESM='Especifica cuándo se modificó la ficha de proveedor por última vez.',
                                FRC='Spécifie la date à laquelle la fiche fournisseur a été modifiée pour la dernière fois.',
                                ENC='Specifies when the vendor card was last modified.';
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
                field("Document Sending Profile";"Document Sending Profile")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the preferred method of sending documents to this vendor, so that you do not have to select a sending option every time that you post and send a document to the vendor. Documents to this vendor will be sent using the specified sending profile and will override the default document sending profile.',
                                ESM='Especifica el método preferido de envío de documentos a este proveedor, para que no sea necesario seleccionar una opción de envío cada vez que registra y envía un documento al proveedor. Los documentos de este proveedor se enviarán con el perfil que de envío especificado que reemplazará al perfil de envío de documentos predeterminado.',
                                FRC='Spécifie la méthode préférée d''envoi de documents à ce fournisseur afin que vous n''ayez pas à sélectionner une option d''envoi chaque fois que vous reportez et envoyez un document à ce fournisseur. Les documents seront envoyés à ce fournisseur en utilisant le profil d''envoi spécifié et remplaceront le profil d''envoi de document par défaut.',
                                ENC='Specifies the preferred method of sending documents to this vendor, so that you do not have to select a sending option every time that you post and send a document to the vendor. Documents to this vendor will be sent using the specified sending profile and will override the default document sending profile.';
                }
                field("Search Name";"Search Name")
                {
                    ApplicationArea = Advanced;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies an alternate name that you can use to search for the record in question when you cannot remember the value in the Name field.',
                                ESM='Especifica un nombre alternativo que puede usar para buscar el registro en cuestión cuando no logra recordar el valor del campo Nombre.',
                                FRC='Spécifie un autre nom que vous pouvez utiliser pour rechercher l''enregistrement concerné lorsque vous ne vous souvenez plus de la valeur dans le champ Nom.',
                                ENC='Specifies an alternate name that you can use to search for the record in question when you cannot remember the value in the Name field.';
                }
                field("IC Partner Code";"IC Partner Code")
                {
                    ApplicationArea = Intercompany;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the vendor''s IC partner code, if the vendor is one of your intercompany partners.',
                                ESM='Especifica el código de socio de empresas vinculadas del proveedor, si el proveedor es uno de sus socios de empresas vinculadas.',
                                FRC='Spécifie le code de partenaire IC du fournisseur si ce dernier est l''un de vos partenaires intercompagnies.',
                                ENC='Specifies the vendor''s IC partner code, if the vendor is one of your intercompany partners.';
                }
                field("Purchaser Code";"Purchaser Code")
                {
                    ApplicationArea = Advanced;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies which purchaser is assigned to the vendor.',
                                ESM='Especifica el comprador asignado al proveedor.',
                                FRC='Spécifie l''acheteur affecté au fournisseur.',
                                ENC='Specifies which purchaser is assigned to the vendor.';
                }
                field("Responsibility Center";"Responsibility Center")
                {
                    ApplicationArea = Advanced;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the code of the responsibility center, such as a distribution hub, that is associated with the involved user, company, customer, or vendor.',
                                ESM='Especifica el código del centro de responsabilidad, como, por ejemplo, un centro de distribución que esté asociado al usuario, la empresa, el cliente o el proveedor relacionado.',
                                FRC='Spécifie le code du centre de gestion, tel qu''un centre de distribution, associé à l''utilisateur, la compagnie, le client ou le fournisseur concerné.',
                                ENC='Specifies the code of the responsibility centre, such as a distribution hub, that is associated with the involved user, company, customer, or vendor.';
                }
            }
            group("Address & Contact")
            {
                CaptionML = ENU='Address & Contact',
                            ESM='Dirección y contacto',
                            FRC='Adresse et contact',
                            ENC='Address & Contact';
                group(Address)
                {
                    CaptionML = ENU='Address',
                                ESM='Dirección',
                                FRC='Adresse',
                                ENC='Address';
                    field(Control6;Address)
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies the vendor''s address.',
                                    ESM='Especifica la dirección del proveedor.',
                                    FRC='Spécifie l''adresse du fournisseur.',
                                    ENC='Specifies the vendor''s address.';
                    }
                    field("Address 2";"Address 2")
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies additional address information.',
                                    ESM='Especifica información adicional sobre la dirección.',
                                    FRC='Spécifie des informations d''adresse supplémentaires.',
                                    ENC='Specifies additional address information.';
                    }
                    field(City;City)
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies the vendor''s city.',
                                    ESM='Especifica el municipio/ciudad del proveedor.',
                                    FRC='Spécifie la ville du fournisseur.',
                                    ENC='Specifies the vendor''s city.';
                    }
                    field(County;County)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='State',
                                    ESM='Estado',
                                    FRC='Province',
                                    ENC='Province/State';
                        ToolTipML = ENU='Specifies the state as a part of the address.',
                                    ESM='Especifica el estado o provincia como parte de la dirección.',
                                    FRC='Spécifie la province comme partie de l''adresse.',
                                    ENC='Specifies the province/state as a part of the address.';
                    }
                    field("Post Code";"Post Code")
                    {
                        ApplicationArea = Basic,Suite;
                        Importance = Promoted;
                        ToolTipML = ENU='Specifies the ZIP code.',
                                    ESM='Especifica el código postal.',
                                    FRC='Spécifie le code postal.',
                                    ENC='Specifies the postal code.';
                    }
                    field("Country/Region Code";"Country/Region Code")
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies the country/region of the address.',
                                    ESM='Especifica el país o la región de la dirección.',
                                    FRC='Spécifie le pays/la région de l''adresse.',
                                    ENC='Specifies the country/region of the address.';
                    }
                    field(ShowMap;ShowMapLbl)
                    {
                        ApplicationArea = Advanced;
                        Editable = false;
                        ShowCaption = false;
                        Style = StrongAccent;
                        StyleExpr = TRUE;
                        ToolTipML = ENU='Specifies you can view the customer''s address on your preferred map website.',
                                    ESM='Especifica que puede ver la dirección del cliente en su sitio web de mapas favorito.',
                                    FRC='Spécifie que vous pouvez afficher l''adresse du client sur votre site Web de mappage préféré.',
                                    ENC='Specifies you can view the customer''s address on your preferred map website.';

                        trigger OnDrillDown();
                        begin
                            CurrPage.UPDATE(true);
                          
                        end;
                    }
                }
                group(Contact)
                {
                    CaptionML = ENU='Contact',
                                ESM='Contacto',
                                FRC='Contact',
                                ENC='Contact';
                    field("Primary Contact No.";"Primary Contact No.")
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Primary Contact Code',
                                    ESM='Código del contacto principal',
                                    FRC='Code contact principal',
                                    ENC='Primary Contact Code';
                        ToolTipML = ENU='Specifies the primary contact number for the customer.',
                                    ESM='Especifica el número de contacto principal del cliente.',
                                    FRC='Spécifie le numéro de contact principal du client.',
                                    ENC='Specifies the primary contact number for the customer.';
                    }
                    field(Control16;Contact)
                    {
                        ApplicationArea = Basic,Suite;
                        Editable = ContactEditable;
                        Importance = Promoted;
                        ToolTipML = ENU='Specifies the name of the person you regularly contact when you do business with this vendor.',
                                    ESM='Especifica el nombre de la persona con la que contacta normalmente cuando trata con este proveedor.',
                                    FRC='Spécifie le nom de la personne que vous contactez régulièrement lorsque vous traitez avec ce fournisseur.',
                                    ENC='Specifies the name of the person you regularly contact when you do business with this vendor.';

                        trigger OnValidate();
                        begin
                            ContactOnAfterValidate;
                        end;
                    }
                    field("Phone No.";"Phone No.")
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies the vendor''s telephone number.',
                                    ESM='Especifica el número de teléfono del proveedor.',
                                    FRC='Spécifie le numéro de téléphone du fournisseur.',
                                    ENC='Specifies the vendor''s telephone number.';
                    }
                    field("E-Mail";"E-Mail")
                    {
                        ApplicationArea = Basic,Suite;
                        ExtendedDatatype = EMail;
                        Importance = Promoted;
                        ToolTipML = ENU='Specifies the vendor''s email address.',
                                    ESM='Especifica la dirección de correo electrónico del proveedor.',
                                    FRC='Spécifie l''adresse de courriel du fournisseur.',
                                    ENC='Specifies the vendor''s email address.';
                    }
                    field("Fax No.";"Fax No.")
                    {
                        ApplicationArea = Advanced;
                        Importance = Additional;
                        ToolTipML = ENU='Specifies the customer''s fax number.',
                                    ESM='Especifica el número de fax del cliente.',
                                    FRC='Spécifie le numéro de télécopieur du client.',
                                    ENC='Specifies the customer''s fax number.';
                    }
                    field("Home Page";"Home Page")
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies the vendor''s web site.',
                                    ESM='Especifica el sitio web del proveedor.',
                                    FRC='Spécifie le site Web du fournisseur.',
                                    ENC='Specifies the vendor''s web site.';
                    }
                    field("Our Account No.";"Our Account No.")
                    {
                        ApplicationArea = Basic,Suite;
                        ToolTipML = ENU='Specifies your account number with the vendor, if you have one.',
                                    ESM='Especifica el número de la cuenta que mantiene con el proveedor, si corresponde.',
                                    FRC='Spécifie votre numéro de compte avec le fournisseur, si vous en avez un.',
                                    ENC='Specifies your account number with the vendor, if you have one.';
                    }
                    field("Language Code";"Language Code")
                    {
                        ApplicationArea = Basic,Suite;
                        Importance = Additional;
                        ToolTipML = ENU='Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.',
                                    ESM='Especifica el idioma que se usa al traducir el texto especificado en los documentos destinados a un socio comercial extranjero, como, por ejemplo, la descripción del producto en una confirmación de pedido.',
                                    FRC='Spécifie la langue utilisée lors de la traduction du texte spécifié sur les documents du partenaire commercial étranger, par exemple une description d''article sur une confirmation de commande.',
                                    ENC='Specifies the language that is used when translating specified text on documents to foreign business partner, such as an item description on an order confirmation.';
                    }
                }
            }
            group(Invoicing)
            {
                CaptionML = ENU='Invoicing',
                            ESM='Facturación',
                            FRC='Facturation',
                            ENC='Invoicing';
                field("VAT Registration No.";"VAT Registration No.")
                {
                    ApplicationArea = Basic,Suite;
                    DrillDown = false;
                    ToolTipML = ENU='Specifies the vendor''s tax registration number.',
                                ESM='Especifica el CIF/NIF del proveedor.',
                                FRC='Spécifie le n° identif. intracomm. du fournisseur.',
                                ENC='Specifies the vendor''s GST/HST Registration Number.';

                    trigger OnDrillDown();
                    var
                        VATRegistrationLogMgt : Codeunit "VAT Registration Log Mgt.";
                    begin
                    end;
                }
                field(GLN;GLN)
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the vendor in connection with electronic document receiving.',
                                ESM='Especifica el proveedor en relación con la recepción de documentos electrónicos.',
                                FRC='Spécifie le fournisseur en relation avec la réception de documents électroniques.',
                                ENC='Specifies the vendor in connection with electronic document receiving.';
                }
                field("Tax Liable";"Tax Liable")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies if the customer is liable for sales tax.',
                                ESM='Especifica si el cliente está sujeto al impuesto sobre las ventas.',
                                FRC='Spécifie si le client est soumis à la taxe de vente.',
                                ENC='Specifies if the customer is liable for sales tax.';
                    Visible = UseSalesTax;
                }
                field("Tax Area Code";"Tax Area Code")
                {
                    ApplicationArea = Basic,Suite;
                    ShowMandatory = true;
                    ToolTipML = ENU='Specifies a tax area code for the company.',
                                ESM='Especifica el código del área fiscal de la empresa.',
                                FRC='Spécifie un code de région fiscale pour la compagnie.',
                                ENC='Specifies a tax area code for the company.';
                    Visible = UseSalesTax;
                }
                field("Pay-to Vendor No.";"Pay-to Vendor No.")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the number of a different vendor whom you pay for products delivered by the vendor on the vendor card.',
                                ESM='Especifica el número de otro proveedor al que pagará los productos entregados por el proveedor de la ficha de proveedor.',
                                FRC='Spécifie le numéro d''un autre fournisseur à qui vous payez des produits livrés par le fournisseur sur la fiche fournisseur.',
                                ENC='Specifies the number of a different vendor whom you pay for products delivered by the vendor on the vendor card.';
                }
                field("Bank Communication";"Bank Communication")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the language of the check image.',
                                ESM='Especifica el idioma de la imagen del cheque.',
                                FRC='Spécifie la langue de l''image du chèque.',
                                ENC='Specifies the language of the cheque image.';
                }
                field("Invoice Disc. Code";"Invoice Disc. Code")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    NotBlank = true;
                    ToolTipML = ENU='Specifies the vendor''s invoice discount code. When you set up a new vendor card, the number you have entered in the No. field is automatically inserted.',
                                ESM='Especifica el código de descuento en factura del proveedor. Al configurar una ficha de proveedor nueva, se inserta automáticamente el número que haya introducido en el campo N.º.',
                                FRC='Spécifie le code escompte facture du fournisseur. Lorsque vous configurez une nouvelle fiche fournisseur, le numéro que vous avez saisi dans le champ N° est inséré automatiquement.',
                                ENC='Specifies the vendor''s invoice discount code. When you set up a new vendor card, the number you have entered in the No. field is automatically inserted.';
                }
                field("Prices Including VAT";"Prices Including VAT")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies if the Unit Price and Line Amount fields on document lines should be shown with or without tax.',
                                ESM='Especifica si los campos precio unitario e Importe línea en las líneas de documento deben mostrarse con o sin IVA.',
                                FRC='Spécifie si les champs Prix unitaire et Montant ligne sur les lignes document vente doivent être affichés avec ou sans la TVA.',
                                ENC='Specifies if the Unit Price and Line Amount fields on sales document lines for this item should be shown with or without tax.';
                    Visible = UseVAT;
                }
                group("Posting Details")
                {
                    CaptionML = ENU='Posting Details',
                                ESM='Detalles del registro',
                                FRC='Détails du report',
                                ENC='Posting Details';
                    field("Gen. Bus. Posting Group";"Gen. Bus. Posting Group")
                    {
                        ApplicationArea = Basic,Suite;
                        Importance = Additional;
                        ShowMandatory = true;
                        ToolTipML = ENU='Specifies the vendor''s trade type to link transactions made for this vendor with the appropriate general ledger account according to the general posting setup.',
                                    ESM='Especifica el tipo de comercio del proveedor para vincular las transacciones realizadas para este proveedor con la cuenta de contabilidad general correspondiente según la configuración de registro general.',
                                    FRC='Spécifie le type commercial du fournisseur pour lier les transactions effectuées pour ce fournisseur au compte GL approprié en fonction de la configuration générale du report.',
                                    ENC='Specifies the vendor''s trade type to link transactions made for this vendor with the appropriate general ledger account according to the general posting setup.';
                    }
                    field("VAT Bus. Posting Group";"VAT Bus. Posting Group")
                    {
                        ApplicationArea = Basic,Suite;
                        Importance = Additional;
                        ToolTipML = ENU='Specifies the Tax specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the Tax posting setup.',
                                    ESM='Indica la especificación de IVA del cliente o el proveedor relacionado para vincular las transacciones realizadas para este registro con la cuenta de contabilidad general correspondiente de acuerdo con la configuración de registro de IVA.',
                                    FRC='Spécifie le détail TVA du client ou du fournisseur concerné pour lier les transactions effectuées pour cet enregistrement au compte GL approprié en fonction de la configuration de report TVA.',
                                    ENC='Specifies the Tax specification of the involved customer or vendor to link transactions made for this record with the appropriate general ledger account according to the Tax posting setup.';
                        Visible = UseVAT;
                    }
                    field("Vendor Posting Group";"Vendor Posting Group")
                    {
                        ApplicationArea = Basic,Suite;
                        Importance = Additional;
                        ShowMandatory = true;
                        ToolTipML = ENU='Specifies the vendor''s market type to link business transactions made for the vendor with the appropriate account in the general ledger.',
                                    ESM='Especifica el tipo de mercado del proveedor para vincular las transacciones empresariales realizadas para el proveedor con la cuenta correspondiente en la contabilidad general.',
                                    FRC='Spécifie le type de marché du fournisseur pour lier les transactions commerciales effectuées pour le fournisseur au compte approprié dans le grand livre.',
                                    ENC='Specifies the vendor''s market type to link business transactions made for the vendor with the appropriate account in the general ledger.';
                    }
                }
                group("Foreign Trade")
                {
                    CaptionML = ENU='Foreign Trade',
                                ESM='Comercio exterior',
                                FRC='Commerce étranger',
                                ENC='Foreign Trade';
                    field("Currency Code";"Currency Code")
                    {
                        ApplicationArea = Suite;
                        Importance = Additional;
                        ToolTipML = ENU='Specifies the currency code that is inserted by default when you create purchase documents or journal lines for the vendor.',
                                    ESM='Especifica el código de divisa que se inserta de forma predeterminada al crear documentos de compras o líneas del diario para el proveedor.',
                                    FRC='Spécifie le code devise qui est inséré par défaut lorsque vous créez des documents achat ou des lignes journal pour le fournisseur.',
                                    ENC='Specifies the currency code that is inserted by default when you create purchase documents or journal lines for the vendor.';
                    }
                }
            }
            group(Payments)
            {
                CaptionML = ENU='Payments',
                            ESM='Pagos',
                            FRC='Paiements',
                            ENC='Payments';
                field("Prepayment %";"Prepayment %")
                {
                    ApplicationArea = Prepayments;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies a prepayment percentage that applies to all orders for this vendor, regardless of the items or services on the order lines.',
                                ESM='Especifica un porcentaje de anticipo aplicable a todos los pedidos de este proveedor, independientemente de los artículos o servicios incluidos en las líneas de pedido.',
                                FRC='Spécifie un pourcentage paiement anticipé s''appliquant à toutes les commandes de ce fournisseur, indépendamment des articles ou des services figurant sur les lignes commande.',
                                ENC='Specifies a prepayment percentage that applies to all orders for this vendor, regardless of the items or services on the order lines.';
                }
                field("Application Method";"Application Method")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies how to apply payments to entries for this vendor.',
                                ESM='Especifica cómo liquidar pagos en los movimientos para este proveedor.',
                                FRC='Spécifie comment affecter des paiements à des écritures pour ce fournisseur.',
                                ENC='Specifies how to apply payments to entries for this vendor.';
                }
                field("Payment Terms Code";"Payment Terms Code")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Promoted;
                    ToolTipML = ENU='Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.',
                                ESM='Especifica una fórmula que calcula la fecha de vencimiento del pago, la fecha de descuento por pronto pago y el importe de descuento por pronto pago.',
                                FRC='Spécifie une formule qui calcule la date d''échéance du paiement, la date de l''escompte de paiement et le montant de l''escompte de paiement.',
                                ENC='Specifies a formula that calculates the payment due date, payment discount date, and payment discount amount.';
                }
                field("Payment Method Code";"Payment Method Code")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Promoted;
                    ToolTipML = ENU='Specifies how to make payment, such as with bank transfer, cash,  or check.',
                                ESM='Especifica cómo realizar el pago, por ejemplo transferencia bancaria, en efectivo o con cheque.',
                                FRC='Spécifie le mode de paiement, par exemple, par virement bancaire, en espèces ou par chèque.',
                                ENC='Specifies how to make payment, such as with bank transfer, cash, or cheque.';
                }
                field(Priority;Priority)
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the importance of the vendor when suggesting payments using the Suggest Vendor Payments function.',
                                ESM='Especifica la importancia del proveedor al sugerir pagos con la función Proponer pagos a proveedores.',
                                FRC='Spécifie l''importance du fournisseur lors de la proposition de paiements à l''aide de la fonction Proposer paiements fournisseur.',
                                ENC='Specifies the importance of the vendor when suggesting payments using the Suggest Vendor Payments function.';
                }
                field("Block Payment Tolerance";"Block Payment Tolerance")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies if the vendor allows payment tolerance.',
                                ESM='Especifica si el proveedor permite una tolerancia de pago.',
                                FRC='Spécifie si le fournisseur autorise une tolérance de règlement.',
                                ENC='Specifies if the vendor allows payment tolerance.';

                    trigger OnValidate();
                    begin
                        /* if "Block Payment Tolerance" then begin
                          if CONFIRM(Text002,false) then
                            PaymentToleranceMgt.DelTolVendLedgEntry(Rec);
                        end else begin
                          if CONFIRM(Text001,false) then
                            PaymentToleranceMgt.CalcTolVendLedgEntry(Rec);
                        end; */
                    end;
                }
                field("Preferred Bank Account Code";"Preferred Bank Account Code")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the vendor bank account that will be used by default on payment journal lines for export to a payment bank file.',
                                ESM='Especifica el banco del proveedor que se usará de forma predeterminada en líneas del diario de pagos para exportar a un archivo de banco del pago.',
                                FRC='Spécifie le compte bancaire fournisseur utilisé par défaut sur les lignes journal paiement pour l''exportation vers un fichier bancaire de paiement.',
                                ENC='Specifies the vendor bank account that will be used by default on payment journal lines for export to a payment bank file.';
                }
                field("Partner Type";"Partner Type")
                {
                    ApplicationArea = Advanced;
                    ToolTipML = ENU='Specifies if the vendor is a person or a company.',
                                ESM='Especifica si el proveedor es una persona o una empresa.',
                                FRC='Spécifie si le fournisseur est une personne ou une compagnie.',
                                ENC='Specifies if the vendor is a person or a company.';
                }
                field("Cash Flow Payment Terms Code";"Cash Flow Payment Terms Code")
                {
                    ApplicationArea = Advanced;
                    ToolTipML = ENU='Specifies a payment term that will be used for calculating cash flow.',
                                ESM='Especifica un término de pago que se utilizará para calcular el flujo de caja.',
                                FRC='Spécifie les conditions de paiement qui sont utilisées pour le calcul de la trésorerie.',
                                ENC='Specifies a payment term that will be used for calculating cash flow.';
                }
                field("IRS 1099 Code";"IRS 1099 Code")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies a 1099 code for the vendor.',
                                ESM='Especifica un código 1099 para el proveedor.',
                                FRC='Spécifie un code 1099 pour le fournisseur.',
                                ENC='Specifies a 1099 code for the vendor.';
                }
                field("FATCA filing requirement";"FATCA filing requirement")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies if the vendor is set up to require FATCA filing.',
                                ESM='Especifica si el proveedor está configurado para exigir el archivo FATCA.',
                                FRC='Spécifie si le fournisseur est configuré pour exiger un archivage FATCA.',
                                ENC='Specifies if the vendor is set up to require FATCA filing.';
                }
                field("Federal ID No.";"Federal ID No.")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Promoted;
                    ToolTipML = ENU='Specifies the vendor''s Taxpayer Identification Number (TIN). The vendor is assigned this number by the tax authorities.',
                                ESM='Especifica el número de identificación fiscal (NIF) del proveedor. Este número lo asignan las autoridades fiscales.',
                                FRC='Spécifie le numéro d''identification du contribuable (TIN) du fournisseur. Ce numéro est attribué au fournisseur par les autorités fiscales.',
                                ENC='Specifies the vendor''s Taxpayer Identification Number (TIN). The vendor is assigned this number by the tax authorities.';
                }
                field("Tax Identification Type";"Tax Identification Type")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the tax identification type for the customer. This information is used for tax reporting. The identification type used for a customer depends on whether the customer is classified as a company or as a person.',
                                ESM='Especifica el tipo de identificación fiscal del cliente. Esta información se usa para la notificación de impuestos. El tipo de identificación que use un cliente o un proveedor dependerá de si está clasificado como persona jurídica o persona física.',
                                FRC='Spécifie le type d''identification taxe pour le client. Ce renseignement est utilisé pour la déclaration fiscale. Le type d''identification utilisé pour un client dépend de la classification du client en tant que personne ou compagnie.',
                                ENC='Specifies the tax identification type for the customer. This information is used for tax reporting. The identification type used for a customer depends on whether the customer is classified as a company or as a person.';
                }
                field("RFC No.";"RFC No.")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the federal registration number for taxpayers.',
                                ESM='Especifica el número de registro federal de los contribuyentes.',
                                FRC='Spécifie le numéro d''identification fédéral des contribuables.',
                                ENC='Specifies the federal registration number for taxpayers.';
                }
                field("CURP No.";"CURP No.")
                {
                    ApplicationArea = Basic,Suite;
                    Importance = Additional;
                    ToolTipML = ENU='Specifies the unique fiscal card identification number. The CURP number must contain 18 digits.',
                                ESM='Especifica el número de identificación de la tarjeta fiscal única. El número CURP debe tener 18 dígitos.',
                                FRC='Spécifie le numéro d''identification de fiche fiscale unique. Le numéro CURP doit contenir 18 chiffres.',
                                ENC='Specifies the unique fiscal card identification number. The CURP number must contain 18 digits.';
                }
                field("State Inscription";"State Inscription")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the tax ID number that is assigned by state tax authorities to every person or corporation.',
                                ESM='Especifica el número de identificación fiscal que asignan las autoridades fiscales del estado a toda persona o empresa.',
                                FRC='Spécifie le numéro de code fiscal attribué par les autorités fiscales provinciales à chaque personne ou compagnie.',
                                ENC='Specifies the tax ID number that is assigned by province/state tax authorities to every person or corporation.';
                }
                field("Creditor No.";"Creditor No.")
                {
                    ApplicationArea = Advanced;
                    ToolTipML = ENU='Specifies the number of the vendor.',
                                ESM='Especifica el número del proveedor.',
                                FRC='Spécifie le numéro du fournisseur.',
                                ENC='Specifies the number of the vendor.';
                }
                field("Check Date Format";"Check Date Format")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies how the date will appear on the printed check image for this bank account.',
                                ESM='Especifica cómo se mostrará la fecha en la imagen impresa del cheque correspondiente a esta cuenta bancaria.',
                                FRC='Spécifie comment la date va apparaître sur l''image du chèque imprimée pour ce compte bancaire.',
                                ENC='Specifies how the date will appear on the printed cheque image for this bank account.';
                }
                field("Check Date Separator";"Check Date Separator")
                {
                    ApplicationArea = Basic,Suite;
                    ToolTipML = ENU='Specifies the character that separates Month, Day and Year of the date that prints on the check image.',
                                ESM='Especifica el carácter que separa el mes, el día y el año de la fecha que se imprime en la imagen del cheque.',
                                FRC='Spécifie le caractère qui sépare le mois, le jour et l''année de la date qui s''imprime sur l''image du chèque.',
                                ENC='Specifies the character that separates Month, Day and Year of the date that prints on the cheque image.';
                }
            }
            group(Receiving)
            {
                CaptionML = ENU='Receiving',
                            ESM='Recepción',
                            FRC='Réception',
                            ENC='Receiving';
                field("Location Code";"Location Code")
                {
                    ApplicationArea = Location;
                    Importance = Promoted;
                    ToolTipML = ENU='Specifies the warehouse location where items from the vendor must be received by default.',
                                ESM='Especifica el almacén en que se deben recibir los productos del proveedor de forma predeterminada.',
                                FRC='Spécifie l''entrepôt où les articles du fournisseur doivent être reçus par défaut.',
                                ENC='Specifies the warehouse location where items from the vendor must be received by default.';
                }
                field("Shipment Method Code";"Shipment Method Code")
                {
                    ApplicationArea = Advanced;
                    Importance = Promoted;
                    ToolTipML = ENU='Specifies the delivery conditions of the related shipment, such as free on board (FOB).',
                                ESM='Especifica las condiciones de entrega del envío en cuestión, como franco a bordo (FOB).',
                                FRC='Spécifie les conditions de livraison de la livraison associée, telles que franco à bord (FAB).',
                                ENC='Specifies the delivery conditions of the related shipment, such as free on board (FOB).';
                }
                field("Shipping Agent Code";"Shipping Agent Code")
                {
                    ToolTipML = ENU='Specifies the code for the shipping agent who is transporting the items.',
                                ESM='Especifica el código del transportista que traslada los productos.',
                                FRC='Spécifie le code de l''agent de livraison qui transporte les articles.',
                                ENC='Specifies the code for the shipping agent who is transporting the items.';
                }
                field("Lead Time Calculation";"Lead Time Calculation")
                {
                    ApplicationArea = Advanced;
                    Importance = Promoted;
                    ToolTipML = ENU='Specifies a date formula for the amount of time it takes to replenish the item.',
                                ESM='Especifica una fórmula de fecha con la cantidad de tiempo que se tarda en reponer el producto.',
                                FRC='Spécifie une formule de date pour le délai nécessaire au réapprovisionnement de l''article.',
                                ENC='Specifies a date formula for the amount of time it takes to replenish the item.';
                }
                field("Base Calendar Code";"Base Calendar Code")
                {
                    ApplicationArea = Advanced;
                    DrillDown = false;
                    ToolTipML = ENU='Specifies a customizable calendar for delivery planning that holds the vendor''s working days and holidays.',
                                ESM='Especifica un calendario personalizable para la entrega que incluye los días laborables y festivos del proveedor.',
                                FRC='Spécifie un calendrier personnalisable pour la planification de la livraison qui contient les vacances et les jours ouvrés du fournisseur.',
                                ENC='Specifies a customizable calendar for delivery planning that holds the vendor''s working days and holidays.';
                }
                field("Customized Calendar";CalendarMgmt.CustomizedCalendarExistText(CustomizedCalendar."Source Type"::Vendor,"No.",'',"Base Calendar Code"))
                {
                    ApplicationArea = Advanced;
                    CaptionML = ENU='Customized Calendar',
                                ESM='Calendario personalizado',
                                FRC='Calendrier personnalisé',
                                ENC='Customized Calendar';
                    Editable = false;
                    ToolTipML = ENU='Specifies if you have set up a customized calendar for the vendor.',
                                ESM='Especifica si ha configurado un calendario personalizado para el proveedor.',
                                FRC='Spécifie si vous avez configuré un calendrier personnalisé pour le fournisseur.',
                                ENC='Specifies if you have set up a customized calendar for the vendor.';

                    trigger OnDrillDown();
                    begin
                        CurrPage.SAVERECORD;
                        TESTFIELD("Base Calendar Code");
                        CalendarMgmt.ShowCustomizedCalendar(CustomizedCalEntry."Source Type"::Vendor,"No.",'',"Base Calendar Code");
                    end;
                }
            }
        }
        area(factboxes)
        {
            part(Control82;"Vendor Picture")
            {
                ApplicationArea = Basic,Suite;
                SubPageLink = "No."=FIELD("No.");
                Visible = NOT IsOfficeAddin;
            }
            part(VendorStatisticsFactBox;"Vendor Statistics FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "No."=FIELD("No."),
                              "Currency Filter"=FIELD("Currency Filter"),
                              "Date Filter"=FIELD("Date Filter"),
                              "Global Dimension 1 Filter"=FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter"=FIELD("Global Dimension 2 Filter");
            }
            part(AgedAccPayableChart;"Aged Acc. Payable Chart")
            {
                ApplicationArea = Basic,Suite;
                SubPageLink = "No."=FIELD("No.");
                Visible = IsOfficeAddin;
            }
            part(Control17;"Social Listening FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "Source Type"=CONST(Vendor),
                              "Source No."=FIELD("No.");
                Visible = SocialListeningVisible;
            }
            part(Control19;"Social Listening Setup FactBox")
            {
                ApplicationArea = All;
                SubPageLink = "Source Type"=CONST(Vendor),
                              "Source No."=FIELD("No.");
                UpdatePropagation = Both;
                Visible = SocialListeningSetupVisible;
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
            part(WorkflowStatus;"Workflow Status FactBox")
            {
                ApplicationArea = All;
                Editable = false;
                Enabled = false;
                ShowFilter = false;
                Visible = ShowWorkflowStatus;
            }
            systempart(Control1900383207;Links)
            {
            }
            systempart(Control1905767507;Notes)
            {
                Editable = true;
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
                action(Dimensions)
                {
                    ApplicationArea = Suite;
                    CaptionML = ENU='Dimensions',
                                ESM='Dimensiones',
                                FRC='Dimensions',
                                ENC='Dimensions';
                    Image = Dimensions;
                    RunObject = Page "Default Dimensions";
                    RunPageLink = "Table ID"=CONST(23),
                                  "No."=FIELD("No.");
                    ShortCutKey = 'Shift+Ctrl+D';
                    ToolTipML = ENU='View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyze transaction history.',
                                ESM='Permite ver o editar dimensiones, como el área, el proyecto o el departamento, que pueden asignarse a los documentos de venta y compra para distribuir costos y analizar el historial de transacciones.',
                                FRC='Affichez ou modifiez les dimensions, telles que la zone, le projet ou le département que vous pouvez affecter aux documents vente et achat afin de distribuer les coûts et analyser l''historique des transactions.',
                                ENC='View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyse transaction history.';
                }
                action("Bank Accounts")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Bank Accounts',
                                ESM='Bancos',
                                FRC='Comptes bancaires',
                                ENC='Bank Accounts';
                    Image = BankAccount;
                    RunObject = Page "Vendor Bank Account List";
                    RunPageLink = "Vendor No."=FIELD("No.");
                    ToolTipML = ENU='View or set up the vendor''s bank accounts. You can set up any number of bank accounts for each vendor.',
                                ESM='Permite ver o configurar las cuentas bancarias del proveedor. Es posible configurar todas las cuentas bancarias deseadas para cada proveedor.',
                                FRC='Affichez ou configurez les comptes bancaires du fournisseur. Vous pouvez configurer autant de comptes bancaires que vous le souhaitez pour chaque fournisseur.',
                                ENC='View or set up the vendor''s bank accounts. You can set up any number of bank accounts for each vendor.';
                }
                action(ContactBtn)
                {
                    AccessByPermission = TableData Contact=R;
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='C&ontact',
                                ESM='&Contacto',
                                FRC='C&ontact',
                                ENC='C&ontact';
                    Image = ContactPerson;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Category7;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = true;
                    ToolTipML = ENU='View or edit detailed information about the contact person at the vendor.',
                                ESM='Permite ver o editar la información detallada sobre la persona de contacto del proveedor.',
                                FRC='Afficher ou modifier des informations détaillées concernant la personne à contacter chez le fournisseur.',
                                ENC='View or edit detailed information about the contact person at the vendor.';

                    trigger OnAction();
                    begin
                      
                    end;
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
                    ToolTipML = ENU='View a list of alternate order addresses for the vendor.',
                                ESM='Permite ver una lista de direcciones de pedido alternativas para el proveedor.',
                                FRC='Affichez une liste des adresses commande secondaires du fournisseur.',
                                ENC='View a list of alternate order addresses for the vendor.';
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
                    ToolTipML = ENU='View the location for the vendor.',
                                ESM='Permite ver la ubicación del proveedor.',
                                FRC='Affichez l''emplacement du fournisseur.',
                                ENC='View the location for the vendor.';
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
                action("Cross References")
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Cross References',
                                ESM='Referencias cruzadas',
                                FRC='Renvois',
                                ENC='Cross References';
                    Image = Change;
                    RunObject = Page "Cross References";
                    RunPageLink = "Cross-Reference Type"=CONST(Vendor),
                                  "Cross-Reference Type No."=FIELD("No.");
                    RunPageView = SORTING("Cross-Reference Type","Cross-Reference Type No.");
                    ToolTipML = ENU='Set up a customer''s or vendor''s own identification of the selected item. Cross-references to the customer''s item number means that the item number is automatically shown on sales documents instead of the number that you use.',
                                ESM='Configura una identificación del producto seleccionado propia del cliente o del proveedor. Las referencias cruzadas con el número de producto del cliente quieren decir que el número de producto se muestra automáticamente en los documentos de venta, en lugar del número que usted usa.',
                                FRC='Configurez la manière dont un client ou un fournisseur identifie l''article sélectionné. Les références externes au numéro d''article du client impliquent que le numéro d''article est automatiquement affiché sur les documents vente au lieu du numéro que vous utilisez.',
                                ENC='Set up a customer''s or vendor''s own identification of the selected item. Cross-references to the customer''s item number means that the item number is automatically shown on sales documents instead of the number that you use.';
                }
                action(VendorReportSelections)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Document Layouts',
                                ESM='Diseños de documento',
                                FRC='Présentations document',
                                ENC='Document Layouts';
                    Image = Quote;
                    ToolTipML = ENU='Set up a layout for different types of documents such as invoices, quotes, and credit memos.',
                                ESM='Permite configurar un diseño para tipos diferentes de documentos, como facturas, cotizaciones y notas de crédito.',
                                FRC='Configurez une présentation pour différents types de documents tels que des factures, des devis et des notes de crédit.',
                                ENC='Set up a layout for different types of documents such as invoices, quotes, and credit memos.';

                    trigger OnAction();
                    var
                        CustomReportSelection : Record "Custom Report Selection";
                    begin
                        CustomReportSelection.SETRANGE("Source Type",DATABASE::Vendor);
                        CustomReportSelection.SETRANGE("Source No.","No.");
                        PAGE.RUNMODAL(PAGE::"Vendor Report Selections",CustomReportSelection);
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
                    RunPageView = SORTING("Vendor No.","Item No.");
                    ToolTipML = ENU='Open the list of items that you trade in.',
                                ESM='Abre la lista de productos que puede comercializar.',
                                FRC='Ouvrez la liste des articles que vous commercialisez.',
                                ENC='Open the list of items that you trade in.';
                }
                action("Invoice &Discounts")
                {
                    ApplicationArea = Suite;
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
                    ApplicationArea = Basic,Suite;
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
                    ApplicationArea = Basic,Suite;
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
                    ApplicationArea = Basic,Suite;
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
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Ledger E&ntries',
                                ESM='Movimien&tos',
                                FRC='É&critures comptables',
                                ENC='Ledger E&ntries';
                    Image = VendorLedger;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
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
                                ESM='Movs. segu&im. prod.',
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
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Category6;
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
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Category6;
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
                PromotedCategory = Category6;
                PromotedOnly = true;
                RunObject = Page "Purchase Invoice";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase invoice for items or services.',
                            ESM='Permite crear una nueva factura de compra de productos o servicios.',
                            FRC='Créez une facture achat pour les articles ou les services.',
                            ENC='Create a new purchase invoice for items or services.';
                Visible = NOT IsOfficeAddin;
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
                PromotedCategory = Category6;
                PromotedOnly = true;
                RunObject = Page "Purchase Order";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase order.',
                            ESM='Crea un nuevo pedido de compra.',
                            FRC='Créez un bon de commande.',
                            ENC='Create a new purchase order.';
                Visible = NOT IsOfficeAddin;
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
                PromotedCategory = Category6;
                PromotedOnly = true;
                RunObject = Page "Purchase Credit Memo";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase credit memo to revert a posted purchase invoice.',
                            ESM='Permite crear una nueva nota de crédito de compra para revertir una factura de compra registrada.',
                            FRC='Créez une note de crédit achat pour rétablir une facture achat reportée.',
                            ENC='Create a new purchase credit memo to revert a posted purchase invoice.';
                Visible = NOT IsOfficeAddin;
            }
            action(NewPurchaseReturnOrder)
            {
                ApplicationArea = PurchReturnOrder;
                CaptionML = ENU='Purchase Return Order',
                            ESM='Devolución compra',
                            FRC='Retour achat',
                            ENC='Purchase Return Order';
                Image = ReturnOrder;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Category6;
                RunObject = Page "Purchase Return Order";
                RunPageLink = "Buy-from Vendor No."=FIELD("No.");
                RunPageMode = Create;
                ToolTipML = ENU='Create a new purchase return order for the vendor.',
                            ESM='Cree un pedido de devolución de compras nuevo para el proveedor.',
                            FRC='Créer un retour commande achat pour le fournisseur.',
                            ENC='Create a new purchase return order for the vendor.';
            }
            action(NewPurchaseInvoiceAddin)
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Purchase Invoice',
                            ESM='Factura compra',
                            FRC='Facture achat',
                            ENC='Purchase Invoice';
                Image = NewPurchaseInvoice;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedOnly = true;
                ToolTipML = ENU='Create a new purchase invoice for items or services.',
                            ESM='Permite crear una nueva factura de compra de productos o servicios.',
                            FRC='Créez une facture achat pour les articles ou les services.',
                            ENC='Create a new purchase invoice for items or services.';
                Visible = IsOfficeAddin;

                trigger OnAction();
                begin
                    
                end;
            }
            action(NewPurchaseOrderAddin)
            {
                ApplicationArea = Suite;
                CaptionML = ENU='Purchase Order',
                            ESM='Pedido compra',
                            FRC='Bon de commande',
                            ENC='Purchase Order';
                Image = Document;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedOnly = true;
                ToolTipML = ENU='Create a new purchase order.',
                            ESM='Permite crear un nuevo pedido de compra.',
                            FRC='Créez un bon de commande.',
                            ENC='Create a new purchase order.';
                Visible = IsOfficeAddin;

                trigger OnAction();
                begin
                    
                end;
            }
            action(NewPurchaseCrMemoAddin)
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Purchase Credit Memo',
                            ESM='Nota de crédito compra',
                            FRC='Note de crédit achat',
                            ENC='Purchase Credit Memo';
                Image = CreditMemo;
                Promoted = true;
                PromotedCategory = Category6;
                PromotedOnly = true;
                ToolTipML = ENU='Create a new purchase credit memo to revert a posted purchase invoice.',
                            ESM='Permite crear una nueva nota de crédito de compra para revertir una factura de compra registrada.',
                            FRC='Créez une note de crédit achat pour rétablir une facture achat reportée.',
                            ENC='Create a new purchase credit memo to revert a posted purchase invoice.';
                Visible = IsOfficeAddin;

                trigger OnAction();
                begin
                  
                end;
            }
        }
        area(processing)
        {
            group(Approval)
            {
                CaptionML = ENU='Approval',
                            ESM='Aprobación',
                            FRC='Approbation',
                            ENC='Approval';
                action(Approve)
                {
                    ApplicationArea = All;
                    CaptionML = ENU='Approve',
                                ESM='Aprobar',
                                FRC='Approuver',
                                ENC='Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTipML = ENU='Approve the requested changes.',
                                ESM='Aprueba los cambios solicitados.',
                                FRC='Approuvez les modifications requises.',
                                ENC='Approve the requested changes.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.ApproveRecordApprovalRequest(RECORDID);
                    end;
                }
                action(Reject)
                {
                    ApplicationArea = All;
                    CaptionML = ENU='Reject',
                                ESM='Rechazar',
                                FRC='Rejeter',
                                ENC='Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    ToolTipML = ENU='Reject the approval request.',
                                ESM='Rechaza la solicitud de aprobación.',
                                FRC='Rejetez la demande d''approbation.',
                                ENC='Reject the approval request.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.RejectRecordApprovalRequest(RECORDID);
                    end;
                }
                action(Delegate)
                {
                    ApplicationArea = All;
                    CaptionML = ENU='Delegate',
                                ESM='Delegar',
                                FRC='Déléguer',
                                ENC='Delegate';
                    Image = Delegate;
                    Promoted = true;
                    PromotedCategory = Category4;
                    ToolTipML = ENU='Delegate the approval to a substitute approver.',
                                ESM='Delega la aprobación a un aprobador sustituto.',
                                FRC='Déléguez l''approbation à un approbateur remplaçant.',
                                ENC='Delegate the approval to a substitute approver.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.DelegateRecordApprovalRequest(RECORDID);
                    end;
                }
                action(Comment)
                {
                    ApplicationArea = All;
                    CaptionML = ENU='Comments',
                                ESM='Comentarios',
                                FRC='Commentaires',
                                ENC='Comments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category4;
                    ToolTipML = ENU='View or add comments for the record.',
                                ESM='Permite ver o agregar comentarios para el registro.',
                                FRC='Afficher ou ajouter des commentaires pour l''enregistrement.',
                                ENC='View or add comments for the record.';
                    Visible = OpenApprovalEntriesExistCurrUser;

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.GetApprovalComment(Rec);
                    end;
                }
            }
            group("Request Approval")
            {
                CaptionML = ENU='Request Approval',
                            ESM='Aprobación solic.',
                            FRC='Approbation demande achat',
                            ENC='Request Approval';
                Image = SendApprovalRequest;
                action(SendApprovalRequest)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Send A&pproval Request',
                                ESM='Enviar solicitud a&probación',
                                FRC='Envoyer demande d''a&pprobation',
                                ENC='Send A&pproval Request';
                    Enabled = NOT OpenApprovalEntriesExist AND CanRequestApprovalForFlow;
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedOnly = true;
                    ToolTipML = ENU='Request approval to change the record.',
                                ESM='Permite solicitar aprobación para cambiar el registro.',
                                FRC='Demander l''approbation pour modifier l''enregistrement.',
                                ENC='Request approval to change the record.';

                    trigger OnAction();
                    var
                        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
                    begin
                        /* if ApprovalsMgmt.CheckVendorApprovalsWorkflowEnabled(Rec) then
                          ApprovalsMgmt.OnSendVendorForApproval(Rec); */
                    end;
                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Cancel Approval Re&quest',
                                ESM='&Cancelar solicitud aprobación',
                                FRC='Annuler demande d''appro&bation',
                                ENC='Cancel Approval Re&quest';
                    Enabled = CanCancelApprovalForRecord OR CanCancelApprovalForFlow;
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedOnly = true;
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
                group(Flow)
                {
                    CaptionML = ENU='Flow',
                                ESM='Flow',
                                FRC='Flow',
                                ENC='Flow';
                    action(CreateFlow)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='Create a Flow',
                                    ESM='Crear un flujo de trabajo',
                                    FRC='Créer un flux de travail',
                                    ENC='Create a Flow';
                        Image = Flow;
                        Promoted = true;
                        PromotedCategory = Category5;
                        PromotedOnly = true;
                        ToolTipML = ENU='Create a new Flow from a list of relevant Flow templates.',
                                    ESM='Permite crear un nuevo flujo de trabajo a partir de una lista de plantillas de flujo de trabajo pertinentes.',
                                    FRC='Créez un flux de travail à partir d''une liste de modèles de flux de travail appropriés.',
                                    ENC='Create a new Flow from a list of relevant Flow templates.';
                        Visible = IsSaaS;

                        trigger OnAction();
                        var
                            FlowServiceManagement : Codeunit "Flow Service Management";
                            FlowTemplateSelector : Page "Flow Template Selector";
                        begin
                            // Opens page 6400 where the user can use filtered templates to create new Flows.
                            //FlowTemplateSelector.SetSearchText(FlowServiceManagement.GetVendorTemplateFilter);
                            FlowTemplateSelector.RUN;
                        end;
                    }
                    action(SeeFlows)
                    {
                        ApplicationArea = Basic,Suite;
                        CaptionML = ENU='See my Flows',
                                    ESM='Ver mis flujos de trabajo',
                                    FRC='Afficher mes flux de travail',
                                    ENC='See my Flows';
                        Image = Flow;
                        Promoted = true;
                        PromotedCategory = Category5;
                        PromotedOnly = true;
                        RunObject = Page "Flow Selector";
                        ToolTipML = ENU='View and configure Flows that you created.',
                                    ESM='Permite ver y configurar los flujos de trabajo que ha creado.',
                                    FRC='Affichez et configurez les flux de travail créés.',
                                    ENC='View and configure Flows that you created.';
                    }
                }
            }
            group("F&unctions")
            {
                CaptionML = ENU='F&unctions',
                            ESM='Acci&ones',
                            FRC='F&onctions',
                            ENC='F&unctions';
                Image = "Action";
                action(Templates)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Templates',
                                ESM='Plantillas',
                                FRC='Modèles',
                                ENC='Templates';
                    Image = Template;
                    //The property 'PromotedIsBig' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedIsBig = true;
                    RunObject = Page "Config Templates";
                    RunPageLink = "Table ID"=CONST(23);
                    ToolTipML = ENU='View or edit vendor templates.',
                                ESM='Permite ver o editar las plantillas de proveedor.',
                                FRC='Affichez ou modifiez des modèles fournisseur.',
                                ENC='View or edit vendor templates.';
                }
                action(ApplyTemplate)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Apply Template',
                                ESM='Aplicar plantilla',
                                FRC='Appliquer le modèle',
                                ENC='Apply Template';
                    Ellipsis = true;
                    Image = ApplyTemplate;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    ToolTipML = ENU='Apply a template to update the entity with your standard settings for a certain type of entity.',
                                ESM='Permite aplicar una plantilla para actualizar la entidad con su configuración estándar para un determinado tipo de entidad.',
                                FRC='Appliquez un modèle pour mettre à jour l''entité avec vos paramètres standard pour un certain type d''entité.',
                                ENC='Apply a template to update the entity with your standard settings for a certain type of entity.';

                    trigger OnAction();
                    var
                        MiniVendorTemplate : Record "Mini Vendor Template";
                    begin
                        //MiniVendorTemplate.UpdateVendorFromTemplate(Rec);
                    end;
                }
                action(SaveAsTemplate)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Save as Template',
                                ESM='Guardar como plantilla',
                                FRC='Sauvegarder comme modèle',
                                ENC='Save as Template';
                    Ellipsis = true;
                    Image = Save;
                    ToolTipML = ENU='Save the vendor card as a template that can be reused to create new vendor cards. Vendor templates contain preset information to help you fill fields on vendor cards.',
                                ESM='Permite guardar la ficha de proveedor como plantilla que se podrá usar para crear nuevas fichas de proveedor. Las plantillas de proveedor contienen información predefinida para ayudarle a completar los cambios de las fichas de proveedor.',
                                FRC='Enregistrez la fiche fournisseur comme modèle que vous pourrez réutiliser pour créer de nouvelles fiches fournisseur. Les modèles fournisseur contiennent des informations prédéfinies pour vous aider à compléter les fiches fournisseur.',
                                ENC='Save the vendor card as a template that can be reused to create new vendor cards. Vendor templates contain preset information to help you fill fields on vendor cards.';

                    trigger OnAction();
                    var
                        TempMiniVendorTemplate : Record "Mini Vendor Template" temporary;
                    begin
                        //TempMiniVendorTemplate.SaveAsTemplate(Rec);
                    end;
                }
            }
            action("Create Payments")
            {
                ApplicationArea = Advanced;
                CaptionML = ENU='Create Payments',
                            ESM='Crear pagos',
                            FRC='Créer paiements',
                            ENC='Create Payments';
                Ellipsis = true;
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
            group("Incoming Documents")
            {
                CaptionML = ENU='Incoming Documents',
                            ESM='Documentos entrantes',
                            FRC='Documents entrants',
                            ENC='Incoming Documents';
                Image = SendApprovalRequest;
                action(SendToIncomingDocuments)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Send to Incoming Documents',
                                ESM='Enviar a Documentos entrantes',
                                FRC='Envoyer vers Documents entrants',
                                ENC='Send to Incoming Documents';
                    Ellipsis = true;
                    Enabled = SendToIncomingDocEnabled;
                    Image = SendElectronicDocument;
                    Promoted = true;
                    PromotedCategory = Category8;
                    PromotedIsBig = true;
                    ToolTipML = ENU='Send to Incoming Documents',
                                ESM='Enviar a Documentos entrantes',
                                FRC='Envoyer vers Documents entrants',
                                ENC='Send to Incoming Documents';
                    Visible = SendToIncomingDocumentVisible;

                    trigger OnAction();
                    begin
                        OfficeMgt.InitiateSendToIncomingDocuments("No.");
                    end;
                }
                action(SendToOCR)
                {
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Send To OCR',
                                ESM='Enviar a OCR',
                                FRC='Envoyer à OCR',
                                ENC='Send To OCR';
                    Ellipsis = true;
                    Enabled = SendToOCREnabled;
                    Image = SendElectronicDocument;
                    Promoted = true;
                    PromotedCategory = Category8;
                    PromotedIsBig = true;
                    ToolTipML = ENU='Send To OCR',
                                ESM='Enviar a OCR',
                                FRC='Envoyer à OCR',
                                ENC='Send To OCR';
                    Visible = SendToOCRVisible;

                    trigger OnAction();
                    begin
                        OfficeMgt.InitiateSendToOCR("No.");
                    end;
                }
                action(SendIncomingDocApprovalRequest)
                {
                    AccessByPermission = TableData "Approval Entry"=I;
                    ApplicationArea = Basic,Suite;
                    CaptionML = ENU='Send A&pproval Request',
                                ESM='Enviar solicitud a&probación',
                                FRC='Envoyer demande d''a&pprobation',
                                ENC='Send A&pproval Request';
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category8;
                    PromotedOnly = true;
                    ToolTipML = ENU='Request approval to change the record.',
                                ESM='Permite solicitar aprobación para cambiar el registro.',
                                FRC='Demander l''approbation pour modifier l''enregistrement.',
                                ENC='Request approval to change the record.';
                    Visible = SendIncomingDocApprovalRequestVisible;

                    trigger OnAction();
                    begin
                        OfficeMgt.InitiateSendApprovalRequest("No.");
                    end;
                }
            }
            action("Vendor - Balance to Date")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Vendor - Balance to Date',
                            ESM='Proveedor - Saldo por fechas',
                            FRC='Fournisseur - Solde à ce jour',
                            ENC='Vendor - Balance to Date';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                ToolTipML = ENU='View a detail balance for selected vendors.',
                            ESM='Permite ver un saldo detallado para determinados proveedores.',
                            FRC='Affichez un Grand livre pour les fournisseurs sélectionnés.',
                            ENC='View a detail balance for selected vendors.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Vendor - Balance to Date");
                end;
            }
            action("Open Vendor Entries")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Open Vendor Entries',
                            ESM='Movs. pendientes de proveedor',
                            FRC='Écritures fournisseurs ouvertes',
                            ENC='Open Vendor Entries';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                PromotedOnly = true;
                ToolTipML = ENU='View open vendor entries. This report lists the open entries for each vendor, and shows the age (days overdue) and remaining amount due in the transaction currency for each open entry.',
                            ESM='Permite ver los movimientos pendientes de los proveedores. Este informe enumera los movimientos pendientes de cada proveedor y muestra su antigüedad (días de retraso) y el importe pendiente, en la divisa de la transacción, de cada movimiento pendiente.',
                            FRC='Affichez les écritures fournisseur ouvertes. Ce rapport répertorie les écritures ouvertes pour chaque fournisseur, et affiche l''ancienneté (jours en souffrance) et le montant ouvert dû dans la devise de transaction pour chaque écriture ouverte.',
                            ENC='View open vendor entries. This report lists the open entries for each vendor, and shows the age (days overdue) and remaining amount due in the transaction currency for each open entry.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Open Vendor Entries");
                end;
            }
            action("Projected Cash Payments")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Projected Cash Payments',
                            ESM='Pagos al contado pronost.',
                            FRC='Paiements encaisse prévus',
                            ENC='Projected Cash Payments';
                Image = PaymentForecast;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                ToolTipML = ENU='View projections about what future payments to vendors will be. Current orders are used to generate a chart, using the specified time period and start date, to break down future payments. The report also includes a total balance column.',
                            ESM='Permite ver proyecciones sobre cuáles serán los pagos futuros a los proveedores. Los pedidos actuales se usan para generar un gráfico, con la fecha inicial y el período especificados, que permite desglosar los pagos futuros. El informe incluye también una columna de saldos totales.',
                            FRC='Affichez les prévisions sur les futurs paiements aux fournisseurs. Les commandes actuelles sont utilisées pour générer un graphique, en utilisant la période et la date de début spécifiées, pour ventiler les futurs paiements. Le rapport inclut également une colonne solde total.',
                            ENC='View projections about what future payments to vendors will be. Current orders are used to generate a chart, using the specified time period and start date, to break down future payments. The report also includes a total balance column.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Projected Cash Payments");
                end;
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
                ToolTipML = ENU='View the federal form 1099-DIV for dividends and distribution.',
                            ESM='Permite ver el formulario federal 1099-DIV para dividendos y distribución.',
                            FRC='Affichez le formulaire fédéral DIV 1099 pour les dividendes et la distribution.',
                            ENC='View the federal form 1099-DIV for dividends and distribution.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Vendor 1099 Div");
                end;
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
                ToolTipML = ENU='View the federal form 1099-INT for interest income.',
                            ESM='Permite ver el formulario federal 1099-INT para ingresos por intereses.',
                            FRC='Affichez le formulaire fédéral INT 1099 pour les revenus en intérêts.',
                            ENC='View the federal form 1099-INT for interest income.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Vendor 1099 Int");
                end;
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
                ToolTipML = ENU='View the federal form 1099-MISC for miscellaneous income.',
                            ESM='Permite ver el formulario federal 1099-MISC para ingresos varios.',
                            FRC='Affichez le formulaire fédéral MISC 1099 pour les revenus divers.',
                            ENC='View the federal form 1099-MISC for miscellaneous income.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Vendor 1099 Misc");
                end;
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
                ToolTipML = ENU='View the vendors'' 1099 information. The report includes all 1099 information for the vendors that have been set up using the IRS 1099 Form-Box table. This includes only amounts that have been paid. It does not include amounts billed but not yet paid. You must enter a date filter before you can print this report.',
                            ESM='Permite ver la información del formulario 1099 de los proveedores. El informe incluye toda la información del formulario 1099 de los proveedores configurados mediante la tabla Form. IRS 1099-Campo. Incluye únicamente los importes pagados, no los importes facturados, pero no pagados aún. Debe especificar un filtro de fechas para poder imprimir este informe.',
                            FRC='Affichez les renseignements 1099 des fournisseurs. Le rapport inclut toutes les informations 1099 des fournisseurs qui ont été configurés à l''aide de la table Case du formulaire IRS 1099. Il n''inclut que les montants qui ont été payés. Il n''inclut pas les montants facturés mais pas encore payés. Vous devez entrer un filtre date avant de pouvoir imprimer ce rapport.',
                            ENC='View the vendors'' 1099 information. The report includes all 1099 information for the vendors that have been set up using the IRS 1099 Form-Box table. This includes only amounts that have been paid. It does not include amounts billed but not yet paid. You must enter a date filter before you can print this report.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Vendor 1099 Information");
                end;
            }
            action("Vendor/Item Statistics")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Vendor/Item Statistics',
                            ESM='Estad. Proveedor/Prdto.',
                            FRC='Statistiques fournisseur/article',
                            ENC='Vendor/Item Statistics';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                ToolTipML = ENU='View a complete or partial catalog of which vendors offer which items.',
                            ESM='Permite ver un catálogo completo o parcial de qué proveedores ofrecen cuáles productos.',
                            FRC='Affichez un catalogue complet ou partiel des articles proposés par tels ou tels fournisseurs.',
                            ENC='View a complete or partial catalogue of which vendors offer which items.';

                trigger OnAction();
                begin
                    RunReport(REPORT::"Vendor/Item Statistics");
                end;
            }
            action("Vendor Report")
            {
                //--------------------NS----New Extension TAB----------------------------------
                Image = Vendor;
                Promoted =true;
                PromotedCategory = Process;
            trigger OnAction();
            begin              
                SMTPSetup_gRec.Get();
                SMTPMail_gCU.CreateMessage('Vendor',SMTPSetup_gRec."User ID",rec."E-Mail",'Vendor report','',true);
                SMTPMail_gCU.AppendBody('Hi!');
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody('Please find the below attachment of the Vendor '+Rec."No.");
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody('Regards');
                SMTPMail_gCU.AppendBody('<br>');
                SMTPMail_gCU.AppendBody(Rec.Name);
//---------------------for PDF-----------------------------------------
                XMLParameter := Report.RunRequestPage(50103);
                PDFGenerator.PDF.CreateOutStream(EmailOutStream,TextEncoding::UTF8);
                PDFGenerator.PDF.CreateInStream(EmailInStream,TextEncoding::UTF8);
                
                Report.SaveAs(50103,XMLParameter,ReportFormat::Pdf,EmailOutStream);
                SMTPMail_gCU.AddAttachmentStream(EmailInStream,'Vendor'+Rec."No."+'.pdf');
//---------------------for PDF-----------------------------------------
                SMTPMail_gCU.Send();
                SendMail := true;

                if SendMail = true then 
                    Message('Mail is send successfully');
               
            end;
//------------------------New Extension TAB-NE---------------------------------                
            }
            action("Vendor/Item Catalog")
            {
                ApplicationArea = Basic,Suite;
                CaptionML = ENU='Vendor/Item Catalog',
                            ESM='Catálogo de productos/proveedor',
                            FRC='Catalogue d''articles/fournisseur',
                            ENC='Vendor/Item Catalogue';
                Image = "Report";
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = "Report";
                ToolTipML = ENU='View a complete or partial catalog of which vendors offer which items.',
                            ESM='Permite ver un catálogo completo o parcial de qué proveedores ofrecen cuáles productos.',
                            FRC='Affichez un catalogue complet ou partiel des articles proposés par tels ou tels fournisseurs.',
                            ENC='View a complete or partial catalogue of which vendors offer which items.';

                trigger OnAction();
                begin
                    ItemVendor.SETRANGE("Vendor No.","No.");
                    REPORT.RUNMODAL(REPORT::"Item/Vendor Catalog",true,true,ItemVendor);
                end;
                
                
            }
        }
    }

    trigger OnAfterGetCurrRecord();
    begin
        CreateVendorFromTemplate;
        ActivateFields;
        OpenApprovalEntriesExistCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(RECORDID);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(RECORDID);
        ShowWorkflowStatus := CurrPage.WorkflowStatus.PAGE.SetFilterOnWorkflowRecord(RECORDID);
        CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(RECORDID);
        WorkflowWebhookManagement.GetCanRequestAndCanCancel(RECORDID,CanRequestApprovalForFlow,CanCancelApprovalForFlow);

       /*  if "No." <> '' then
          CurrPage.AgedAccPayableChart.PAGE.UpdateChartForVendor("No."); */
    end;

    trigger OnAfterGetRecord();
    begin
        ActivateFields;
    end;

    

    
    
    var
        CustomizedCalEntry : Record "Customized Calendar Entry";
        CustomizedCalendar : Record "Customized Calendar Change";
        ItemVendor : Record "Item Vendor";
        OfficeMgt : Codeunit "Office Management";
        CalendarMgmt : Codeunit "Calendar Management";
        PaymentToleranceMgt : Codeunit "Payment Tolerance Management";
        WorkflowWebhookManagement : Codeunit "Workflow Webhook Management";
        ApprovalsMgmt : Codeunit "Approvals Mgmt.";
        Text001 : TextConst ENU='Do you want to allow payment tolerance for entries that are currently open?',ESM='¿Desea permitir la tolerancia de pago para movimientos pendientes?',FRC='Souhaitez-vous autoriser les écarts de règlement pour les écritures actuellement ouvertes ?',ENC='Do you want to allow payment tolerance for entries that are currently open?';
        Text002 : TextConst ENU='Do you want to remove payment tolerance from entries that are currently open?',ESM='¿Confirma que desea eliminar la tolerancia pago de los movimientos actualmente pendientes?',FRC='Souhaitez-vous supprimer les écarts de règlement pour les écritures actuellement ouvertes ?',ENC='Do you want to remove payment tolerance from entries that are currently open?';
        [InDataSet]
        ContactEditable : Boolean;
        [InDataSet]
        SocialListeningSetupVisible : Boolean;
        [InDataSet]
        SocialListeningVisible : Boolean;
        OpenApprovalEntriesExistCurrUser : Boolean;
        OpenApprovalEntriesExist : Boolean;
        ShowWorkflowStatus : Boolean;
        ShowMapLbl : TextConst ENU='Show on Map',ESM='Mostrar en el mapa',FRC='Afficher sur une carte',ENC='Show on Map';
        IsOfficeAddin : Boolean;
        CanCancelApprovalForRecord : Boolean;
        UseSalesTax : Boolean;
        UseVAT : Boolean;
        SendToOCREnabled : Boolean;
        SendToOCRVisible : Boolean;
        SendToIncomingDocEnabled : Boolean;
        SendIncomingDocApprovalRequestVisible : Boolean;
        SendToIncomingDocumentVisible : Boolean;
        NoFieldVisible : Boolean;
        NewMode : Boolean;
        CanRequestApprovalForFlow : Boolean;
        CanCancelApprovalForFlow : Boolean;
        IsSaaS : Boolean;
        Vendor_gRec : Record "Vendor Extension";
        Vendorreport_gRep : Report "Vendor Report";
        VendorExtension_gRec :Record "Vendor Extension";
        XMLParameter : text;
        PDFGenerator : Record "PDF Generator Extension";
        EmailInStream : InStream;
        EmailOutStream : OutStream;
        SMTPSetup_gRec : Record "SMTP Mail Setup";
        SMTPMail_gCU : Codeunit "SMTP Mail";
        SendMail : Boolean;
        

        
        

    local procedure ActivateFields();
    begin
        SetSocialListeningFactboxVisibility;
        ContactEditable := "Primary Contact No." = '';
        if OfficeMgt.IsAvailable then
          ActivateIncomingDocumentsFields;
    end;

    local procedure ContactOnAfterValidate();
    begin
        ActivateFields;
    end;

    local procedure SetSocialListeningFactboxVisibility();
    var
        SocialListeningMgt : Codeunit "Social Listening Management";
    begin
        //SocialListeningMgt.GetVendFactboxVisibility(Rec,SocialListeningSetupVisible,SocialListeningVisible);
    end;
    local procedure SetVendorNoVisibilityOnFactBoxes();
    begin
        CurrPage.VendorHistBuyFromFactBox.PAGE.SetVendorNoVisibility(false);
        CurrPage.VendorHistPayToFactBox.PAGE.SetVendorNoVisibility(false);
        CurrPage.VendorStatisticsFactBox.PAGE.SetVendorNoVisibility(false);
    end;

    local procedure RunReport(ReportNumber : Integer);
    var
        Vendor : Record Vendor;
    begin
        Vendor.SETRANGE("No.","No.");
        REPORT.RUNMODAL(ReportNumber,true,true,Vendor);
    end;

    local procedure ActivateIncomingDocumentsFields();
    var
        IncomingDocument : Record "Incoming Document";
    begin
        /* if OfficeMgt.OCRAvailable then begin
          SendToIncomingDocumentVisible := true;
          SendToIncomingDocEnabled := OfficeMgt.EmailHasAttachments;
          SendToOCREnabled := OfficeMgt.EmailHasAttachments;
          SendToOCRVisible := IncomingDocument.OCRIsEnabled and not IsIncomingDocApprovalsWorkflowEnabled;
          SendIncomingDocApprovalRequestVisible := IsIncomingDocApprovalsWorkflowEnabled;
        end; */
    end;

    local procedure IsIncomingDocApprovalsWorkflowEnabled() : Boolean;
    var
        WorkflowEventHandling : Codeunit "Workflow Event Handling";
        WorkflowDefinition : Query "Workflow Definition";
    begin
        WorkflowDefinition.SETRANGE(Table_ID,DATABASE::"Incoming Document");
        WorkflowDefinition.SETRANGE(Entry_Point,true);
        WorkflowDefinition.SETRANGE(Enabled,true);
        WorkflowDefinition.SETRANGE(Type,WorkflowDefinition.Type::"Event");
        WorkflowDefinition.SETRANGE(Function_Name,WorkflowEventHandling.RunWorkflowOnSendIncomingDocForApprovalCode);
        WorkflowDefinition.OPEN;
        while WorkflowDefinition.READ do
          exit(true);

        exit(false);
    end;

    local procedure CreateVendorFromTemplate();
    var
        MiniVendorTemplate : Record "Mini Vendor Template";
        Vendor : Record Vendor;
        VATRegNoSrvConfig : Record "VAT Reg. No. Srv Config";
        EUVATRegistrationNoCheck : Page "EU VAT Registration No Check";
        VendorRecRef : RecordRef;
    begin
        if NewMode then begin
          if MiniVendorTemplate.NewVendorFromTemplate(Vendor) then begin
            if VATRegNoSrvConfig.VATRegNoSrvIsEnabled then
              if Vendor."Validate EU Vat Reg. No." then begin
                //EUVATRegistrationNoCheck.SetRecordRef(Vendor);
                COMMIT;
                EUVATRegistrationNoCheck.RUNMODAL;
                //EUVATRegistrationNoCheck.GetRecordRef(VendorRecRef);
                VendorRecRef.SETTABLE(Vendor);
              end;
            COPY(Vendor);
            CurrPage.UPDATE;
          end;
          NewMode := false;
        end;
    end;

    local procedure SetNoFieldVisible();
    var
        DocumentNoVisibility : Codeunit DocumentNoVisibility;
    begin
        NoFieldVisible := DocumentNoVisibility.VendorNoIsVisible;
    end;
}

