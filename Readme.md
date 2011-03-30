# dm-extjs

datamapper plugin for serializing datamapper resources and collections into extjs json objects

## install

Just vendor and require this library to use. Must also have dm-serializer installed.

## examples

Describe a collection of resources:

    Person.all(:name.like => "%fred%").to_extjs
    
Describe a resource and specific related resources:

    Person.get(10).to_extjs(
      :methods => [:pets]
    )

Describe the success of a save operation for a resource:

    person = Person.new
    person.attributes = param_attributes
    person.to_extjs(:success => person.save)