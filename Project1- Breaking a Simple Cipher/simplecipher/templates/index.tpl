{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{* title is read from the config file *}
<h1> {#title#} </h1>

{* <p>The current date and time is {$smarty.now|date_format:"%Y-%m-%d %H:%M:%S"}</p> *}

<p>Please enter your 64-bit plaintext and key as 16 hex digits below. For example:
<PRE> 0123456789AbcdEF </PRE>
If the key is left blank, a default key will be used.  
</p>

<form action="index.php" method="post" name="theForm">
<table>
<tr>
<td> &nbsp </td> <td> 
<span class="monospace">0----5----0----5</span> 
</td> 
</tr> 

<tr>
<td> Plaintext: </td>
<td>
<input class="monospace" size="18" name="pt" value="{$plaintext}"> 
</td>
</tr>

<tr>
<td> Key: </td>
<td>
<input class="monospace" size="18" name="key" value="{$key}"> 
</td>
</tr>

<tr>
<td> &nbsp </td> <td> <input type="submit" name="mysubmit" value="Encrypt"> </td> 
</tr> 

</table>
</form>

{if ($ciphertext ne "")}
<PRE>
Plaintext : {$plaintext|upper}
Key       : {$key|upper}
Ciphertext: {$ciphertext|upper}
</PRE>
{/if}

{if ($errormsg ne "")}
Error: <span style="color:red">{$errormsg}</span>
{/if}
{include file="footer.tpl"}
