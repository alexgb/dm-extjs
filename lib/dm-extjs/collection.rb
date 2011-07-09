module DataMapper
  module ExtJS
    module Collection
  
      def to_extjs (options={})
        ret = {
          :metaData => model.ext_meta(options[:methods]),
          :success => options.has_key?(:success) ? options[:success] : true,
          :message => options.has_key?(:message) ? options[:message] : '',
          :total => count,
          :results => self.to_json(options.merge(:to_json => false))
        }
        options.fetch(:to_json, true) ? ret.to_json : ret
      end
    
    end
  end
end