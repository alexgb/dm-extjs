# dm-extjs

A DataMapper plugin that will serialize and provide meta data descriptions for resources and collections. Compatible with ExtJS and Sencha Touch.

## Install

Just vendor and require this library to use. Must also have dm-serializer installed.

## Examples

Describe a collection of resources:

    Person.all(:name.like => "%larry%").to_extjs
    
Describe a resource and specific related resources:

    Person.get(10).to_extjs(
      :methods => [:pets]
    )

Describe the success of a save operation for a resource:

    person = Person.new
    person.attributes = {:name => "Larry", :phone => "238-2934-4444"}
    person.to_extjs(:success => person.save)
    
## Responses

The above examples will produce JSON which resembles the following. These responses should be automagically ingested by your Ext.data.JsonReader.

    {
        "metaData": {
            "root": "results",
            "successProperty": "success",
            "messageProperty": "message",
            "total": "total",
            "start": "start",
            "limit": "limit",
            "fields": [{
                "name": "id",
                "type": "int"
            },
            {
                "name": "name",
                "type": "string"
            },    
            {
                "name": "phone",
                "type": "string"
            }],
            "idProperty": "id"
        },
        "success": true,
        "message": "",
        "total": 1,
        "results": [{
            "id": 1,
            "name": "Larry",
            "phone": "238-2934-4444"
        }]
    }