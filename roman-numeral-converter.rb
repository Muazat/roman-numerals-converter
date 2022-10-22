def loop(times, array,value)
    for n in 1..times
      array.push(value)
    end
  end
  def my_roman_numerals_converter(num)
    num=num.to_i
    converted=num.to_s
    i=0
    check=0
    array=[]
    conlength=converted.length
    if num>3000
      puts "Nmber greater than 3000"
      return NIL
    end
    while i<converted.length
      check=converted[i]
      if conlength==4
         if check.to_i<4
            loop(check.to_i, array,"M")
          else
            conlength-=1 
            i+=1
            next
          end #inner if 4
           
      elsif conlength==3
         if check.to_i>8
            array.push("CM")
          elsif check.to_i>5
            array.push("D")
            loop(check.to_i-5, array,"C")
          elsif check.to_i==5
            array.push("D")
          elsif check.to_i==4
            array.push("CD")
          elsif check.to_i>0
            loop(check.to_i, array,"C")
          else
            conlength-=1 
            i+=1
            next
          end #inner if 3
      elsif conlength==2
         if check.to_i>8
            array.push("XC")
         elsif check.to_i>5
            array.push("L")
            loop(check.to_i-5,array,"X")
         elsif check.to_i==5
            array.push("L")
         elsif check.to_i==4
            array.push("XL")
         elsif check.to_i>0
            loop(check.to_i ,array,"X")
         else
            conlength-=1 
            i+=1  
            next
         end #inner if 2
      else  
         if check.to_i>8
            array.push("IX")
         elsif check.to_i>5
            array.push("X")
            loop(check.to_i-5,array,"I")
         elsif check.to_i==5
            array.push("V")
         elsif check.to_i==4
            array.push("IV")
         elsif check.to_i>0
            loop(check.to_i, array, "I")   
         else
            conlength-=1 
            i+=1
            next
        end #inner if else        
    end #main if
      conlength-=1
      i+=1
   end #end of while
   value=array*''        
   return value
  end #end of def
