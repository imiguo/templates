{include file="header.tpl"}



<br>
<form  method="post" name="deposit"  onsubmit="return checkform()">

<table width="200" border="0">
  <tr>
    <td>username </td>
    <td>    <input name="username" type="text" size="20" maxlength="20" />             </td>
  </tr>
  <tr>
    <td>amount</td>
    <td>             <input name="amount" type="text" size="20" maxlength="20" />     </td>
  </tr>
 
  <tr>
    <td>ec</td>
    <td>       <select name=ec> 
    <option value=1001>AP</option> 
    <option value=15>LR</option>
    <option value=18>PM</option>
	 <option value=16>EGOPAY</option>
	  <option value=17>STP</option>
   
    
    
    </select> 
    
    
    
        </td>
    
    
       <tr> <td>PLan</td><td>      
<select name=jh>
<option value=1>PLAN1</option>
<option value=2>PLAN2</option>
<option value=3>PLAN3</option>
<option value=4>PLAN4</option>
</select>
     </td></tr>
     
  </tr>
  
  
  
  <hr> <tr>
    <td ><font color=red >Payza</font></td>
    <td>             <input name="payza" type="text" size="20" maxlength="20" />     </td>
  </tr>
<tr><td>
  <input name="submit" type="submit" value="submit" />
<input name="submited" type="hidden" value="1" />
 </td></tr>
</table>






</form>



{include file="footer.tpl"}
