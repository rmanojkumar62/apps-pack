<button onclick="ExportToExcel();" type="button">Click mebutton>
<script>
function ExportToExcel()  {
 
    // Here, we need the List VIEW ID.
    // Option 1: If you have the list view added on the same page, you can retrieve the View ID using DOM Manipulation
    // Option 2: If you know the view name and list name, you can get the list view id using coding.
    var strViewId = '77f7ee4e-9d57-4999-8087-957461d3017e';
 
    //obtaining attributes to build ows query
    var url = 'https://bayergroup.sharepoint.com/sites/004310';
    var owasr1 = '/testing/_vti_bin/owssvr.dll?CS=65001&Using=_layouts/15/query.iqy&List={';
    var owasr2 = '}&View={';
 
    var context = new SP.ClientContext.get_current();
    var web = context.get_web();
 
    var mListName = "COTDigitalEngagement";
    var mList = web.get_lists().getByTitle(mListName);
 
    //call to get list id param
    context.load(mList);
 
    context.executeQueryAsync(onQuerySucceeded, onQueryFailed);
 
    function onQuerySucceeded() {
        var idList = 'b0fe955f-fe69-4b79-996c-7b6061d1d9e0';
 
        // SYNTAX: <<SiteAbsoluteUrl>>/_vti_bin/owssvr.dll?CS=65001&Using=_layouts/15/query.iqy&List=<<ListGUID>>&View=<<ListVIewGUID>>
        var qstring = url + owasr1 + idList + owasr2 + strViewId + '}';
        window.location.replace(qstring);
    }
 
    function onQueryFailed(args) {
        var message = args.get_message();
        ErrorMessage("Facing Issue: " + message);
    }
};
</script>
