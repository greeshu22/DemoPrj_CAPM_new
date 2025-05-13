using SupplierService as service from '../../srv/service';
annotate service.Suppliers with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'city',
                Value : city,
            },
        ],
    },

    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'ProductInfos',
            ID : 'ProductInfos',
            Target : '@UI.FieldGroup#ProductInfos',
        },
      
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'city',
            Value : city,
        },
    ],
      UI.SelectionFields : [
        name,
        phone,city
    ],
    UI.FieldGroup #ProductInfos : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : products.ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : products.name,
                Label : 'name',
            },
            {
                $Type : 'UI.DataField',
                Value : products.price,
                Label : 'price',
            },
            {
                $Type : 'UI.DataField',
                Value : products.descriptio,
                Label : 'descriptio',
            },
        ],
    },
);

annotate service.Suppliers with {
    products @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'products',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : products_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'descriptio',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'price',
            },
        ],
    }
};

annotate service.products with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : 'supplier/@UI.LineItem',
            Label : 'ProductInformation',
            ID : 'ProdInfo',
        },
    ],

  
);

