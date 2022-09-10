Public Boolean polidrone(String s){
   Stack<Character> st = new Stack<Character>();
   for(char c : s.tocharArray()){
       if (c == '(')
         st.push(')');
         else if ( st.isEmpty() || st.pop() !=c)
            return false;
   }
   if (st.isEmpty){
    return  true;
   }
   
