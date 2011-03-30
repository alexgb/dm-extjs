module DataMapper
  module ExtJS
    module Collection
  
      def to_extjs (options={})
        {
          :metaData => model.ext_meta(options[:methods]),
          :success => options.has_key?(:success) ? options[:success] : true,
          :message => options.has_key?(:message) ? options[:message] : '',
          :total => count,
          :results => self.to_json(options.merge(:to_json => false))
        }.to_json
      end
    
    end
  end
end