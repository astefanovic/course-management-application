module ApplicationHelper
    
    def replace_id_array (model, array)
        array.map! { |id|
            logger.info array
            id = model.find(id)
        }
    end
    
end
