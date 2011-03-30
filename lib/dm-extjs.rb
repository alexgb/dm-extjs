require 'dm-serializer'

require File.join(File.dirname(__FILE__), 'dm-extjs', 'collection')
require File.join(File.dirname(__FILE__), 'dm-extjs', 'resource')
require File.join(File.dirname(__FILE__), 'dm-extjs', 'model')

module DataMapper
  module ExtJS
    EXT_SORT_PARAM =        'order'
    EXT_LIMIT_PARAM =       'limit'
    EXT_OFFSET_PARAM =      'start'
    EXT_DIRECTION_PARAM =   '_dir'
    
    EXT_META = {
      :root =>              'results',
      :successProperty =>   'success',
      :messageProperty =>   'message',
      :total =>             'total',
      :start =>             EXT_OFFSET_PARAM,
      :limit =>             EXT_LIMIT_PARAM
    }
    
    DM_PARAM_TRANSLATIONS = {
      EXT_SORT_PARAM =>   :order,
      EXT_LIMIT_PARAM =>  :limit,
      EXT_OFFSET_PARAM => :offset
    }

    EXT_TYPE_TRANSLATIONS = {
      'String' =>     {:type => 'string'},
      'Integer' =>    {:type => 'int'},
      'Fixnum' =>     {:type => 'int'},
      'Float' =>      {:type => 'float'},
      'TrueClass' =>  {:type => 'boolean'},
      'FalseClass' => {:type => 'boolean'},
      'Date' =>       {:type => 'date', :dateFormat => 'Y-m-d'},
      'DateTime' =>   {:type => 'date', :dateFormat => 'c'}
    }
  end
end

# include in DM
module DataMapper
  Model.append_inclusions(ExtJS::Resource)
  Model.append_extensions(ExtJS::Model)
  
  class Collection
    include ExtJS::Collection
  end
end
