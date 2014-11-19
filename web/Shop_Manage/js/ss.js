//if (Browser.isIE)
//{
//  onscroll = function()
//  {
//    //document.getElementById('calculator').style.top = document.body.scrollTop;
//    //document.getElementById('popMsg').style.top = (document.body.scrollTop + document.body.clientHeight - document.getElementById('popMsg').offsetHeight) + "px";
//  }
//}

if (document.getElementById("listDiv"))
{
      document.getElementById("listDiv").onmouseover = function(e)
      {
            obj = Utils.srcElement(e);

            if (obj)
            {
                  row=null;
                  if (obj.parentNode.tagName.toLowerCase() == "tr")
                  { 
                      row = obj.parentNode;
                  }
                  else if (obj.parentNode.parentNode.tagName != null&&obj.parentNode.parentNode.tagName.toLowerCase() != "") 
                  {
                      if (obj.parentNode.parentNode.tagName.toLowerCase() == "tr") 
                      {
                          row = obj.parentNode.parentNode;
                      }
                  }
                  else 
                  {
                    return ;
                  }
                    if(row!=null)
                    {
                  for (i = 0; i < row.cells.length; i++)
                  {
                        if (row.cells[i].tagName != "TH") row.cells[i].style.backgroundColor = '#F4FAFB';
                  }
            }
            }
      }

      document.getElementById("listDiv").onmouseout = function(e)
      {
            obj = Utils.srcElement(e);

            if (obj)
            {
                row=null;
                  if (obj.parentNode.tagName.toLowerCase() == "tr")
                  { 
                      row = obj.parentNode;
                  }
                  else if (obj.parentNode.parentNode.tagName != null&&obj.parentNode.parentNode.tagName.toLowerCase() != "") 
                  {
                      if (obj.parentNode.parentNode.tagName.toLowerCase() == "tr") 
                      {
                          row = obj.parentNode.parentNode;
                      }
                  }
                  else return;
                    if(row!=null)
                    {
                  for (i = 0; i < row.cells.length; i++)
                  {
                      if (row.cells[i].tagName != "TH") row.cells[i].style.backgroundColor = '#FFF';
                  }}
            }
      }

      document.getElementById("listDiv").onclick = function(e)
      {
            var obj = Utils.srcElement(e);

            if (obj.tagName == "INPUT" && obj.type == "checkbox")
            {
                  if (!document.forms['listForm'])
                  {
                    return;
                  }
                  var nodes = document.forms['listForm'].elements;
                  var checked = false;

                  for (i = 0; i < nodes.length; i++)
                  {
                        if (nodes[i].checked)
                        {
                           checked = true;
                           break;
                         }
                  }

                  if(document.getElementById("btnSubmit"))
                  {
                    document.getElementById("btnSubmit").disabled = !checked;
                  }
                  for (i = 1; i <= 10; i++)
                  {
                        if (document.getElementById("btnSubmit" + i))
                        {
                          document.getElementById("btnSubmit" + i).disabled = !checked;
                        }
                  }
            }
      }
}