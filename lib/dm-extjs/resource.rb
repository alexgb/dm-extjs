module DataMapper
  module ExtJS
    module Resource
    
      def to_extjs (options={})
        ret = {
          :metaData => self.class.ext_meta(options[:methods]),
          :success => options.has_key?(:success) ? options[:success] : (saved? && clean?),
          :message => (ext_errors << (options[:message] || '')).join("\n"),
          :results => self.to_json(options.merge(:to_json => false))
        }
        options.fetch(:to_json, true) ? ret.to_json : ret
      end
    
      def ext_errors
        errors.to_a unless !respond_to?(:errors)
      end
    
    end
  end
end