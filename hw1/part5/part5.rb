
class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s
    attr_history = attr_name + "_history"
        
    class_eval %Q{
      def #{attr_history}
        if !@#{attr_history}
          @#{attr_history} = [] << @#{attr_name}
        end
        @#{attr_history}
      end
      
      def #{attr_name}
        @#{attr_name}
      end
      
      def #{attr_name}=(value)
        if !@#{attr_history}
          @#{attr_history} = [] << @#{attr_name}
        end
        @#{attr_name} = value
        @#{attr_history} << @#{attr_name}
      end
    }
  end
  
end
