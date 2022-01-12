using MyService as service from '../../srv/allservices';

annotate service.Orders with @(
    UI.HeaderInfo : {
        $Type: 'UI.HeaderInfoType',
        TypeName: 'Order',
        TypeNamePlural: 'Orders',
        Description: {
            $Type: 'UI.DataField',
            Value: orderId
        },
        Title: {
            $Type: 'UI.DataField',
            Value: customername
        }
    },
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'orderId',
            Value : orderId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customername',
            Value : customername,
        },
        {
            $Type : 'UI.DataField',
            Label : 'contactperson',
            Value : contactperson,
        },
        {
            $Type : 'UI.DataField',
            Label : 'grossamount',
            Value : grossamount,
        },
        {
            $Type : 'UI.DataField',
            Label : 'currency',
            Value : currency,
        },
    ]
);
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'orderId',
                Value : orderId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customername',
                Value : customername,
            },
            {
                $Type : 'UI.DataField',
                Label : 'contactperson',
                Value : contactperson,
            },
            {
                $Type : 'UI.DataField',
                Label : 'grossamount',
                Value : grossamount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'currency',
                Value : currency,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
