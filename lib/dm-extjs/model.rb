module DataMapper
  module ExtJS
    module Model
      
      # generates the meta description of a resource
      # TODO: idProperty is set to the first primary key, in instances
      # where you have multiple keys this would be wrong
      # 
      # pass array of relationships (as in to_json(:methods => RELATIONSHIPS))
      # so as to squash provide meta mapping for these related models, this will
      # squash those properties on top of the base model
      
      def ext_meta (relationships=nil)
        relationships ||= []
        ret = {
          :fields => properties.collect {|p| property_description(p)},
          :idProperty => properties.key.first.name
        }
        
        # map related properties to meta description
        # TODO: cleanup needed
        # because "relationships" are actually all declared :methods, this will
        # try to build meta descriptions for both methods on a model, and
        # relationships on a resource, here we attempt to treat the method as a
        # relationship, then assume it's a model level method with a return type
        # of string 
        relationships.each do |r|
          begin
            __send__(r.to_sym).model.properties.each do |p|
              prop = self.property_description(p)
              prop[:mapping] = "#{r}.#{prop[:name]}"
              prop[:name] = "#{r}__#{prop[:name]}"
              ret[:fields].push(prop)
            end
          rescue
            ret[:fields].push({
              :name => r,
              :type => 'string'
            })
          end
          
          
        end
        
        EXT_META.merge(ret)
      end

      protected
    
      # provides property descriptions needed by ext
      def property_description (property) 
        ret = {:name => property.name}
        
        if property.respond_to?(:custom?) && property.custom?
          if property.respond_to? :flag_map
            ret[:type] = EXT_TYPE_TRANSLATIONS["String"][:type]
          else
            ret[:type] = property.class.name.split('::').last.downcase
          end
        elsif type = EXT_TYPE_TRANSLATIONS[property.primitive.to_s][:type]
          ret[:type] = type
        end

        if dateFormat = EXT_TYPE_TRANSLATIONS[property.primitive.to_s][:dateFormat]
          ret[:dateFormat] = dateFormat
        end
        ret
      end
      
    end
  end
end