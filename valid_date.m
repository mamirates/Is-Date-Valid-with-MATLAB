function valid = valid_date(year,month,day)
    if nargin == 3
        if ((~isscalar(year) || year <=0) || (~isscalar(month) || month <=0) || (~isscalar(day) || day <= 0))
                valid = false;
        else
            if (mod(year,4) == 0 && mod(year,100)) || mod(year,400) == 0
                if month == 2 &&  day <= 29
                    valid = true;
                elseif (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month ==12 ) && day <= 31
                    valid = true;
                elseif (month == 4 || month == 6 || month == 9 || month == 11 ) && day <= 30
                    valid = true;
                else
                    valid = false;
                end
            else
                if month == 2 &&  day <= 28
                    valid = true;
                elseif (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 ) && day <= 31
                    valid = true;
                elseif (month == 4 || month == 6 || month == 9 || month == 11 ) && day <= 30
                    valid = true;
                else
                    valid = false;
                end            
            end
        end                    
    else
        error('Please Entered 3 Input Arguments.');
    end
end