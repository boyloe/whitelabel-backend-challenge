class WrapperController < ApplicationController

    def wrap(input_string, column_number)
        trim_input = input_string.strip
        if trim_input.length <= column_number
            return trim_input
        else 
            last_space_index = trim_input.rindex(" ", column_number)
            if last_space_index.nil? 
                last_space_index = column_number
                split_line_array = [trim_input.slice(0..last_space_index), trim_input.slice(last_space_index + 1..-1)]
                "#{split_line_array[0].rstrip}\n#{wrap(split_line_array[1].strip, column_number)}"
            else 
                split_line_array = [trim_input.slice(0..last_space_index), trim_input.slice(last_space_index + 1..-1)]
                "#{split_line_array[0].rstrip}\n#{wrap(split_line_array[1].strip, column_number)}"
            end
        end
    end
end

