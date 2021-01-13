class WrapperController < ApplicationController

    def index 
        wrapped_string = wrap(params[:string], params[:column_number])
        render json: wrapped_string
    end

    def wrap(input_string, column_number)
        trim_input = input_string.strip
        column_number_int = column_number.to_i
        if trim_input.length <= column_number_int
            return trim_input
        else 
            last_space_index = trim_input.rindex(" ", column_number_int)
            if last_space_index.nil? 
                last_space_index = column_number_int - 1
                split_line_array = [trim_input.slice(0..last_space_index), trim_input.slice(last_space_index + 1..-1)]
                "#{split_line_array[0].rstrip}\n#{wrap(split_line_array[1].strip, column_number_int)}"
            else 
                split_line_array = [trim_input.slice(0..last_space_index), trim_input.slice(last_space_index + 1..-1)]
                "#{split_line_array[0].rstrip}\n#{wrap(split_line_array[1].strip, column_number_int)}"
            end
        end
    end
end

