require 'cgi'

cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") { 
    get = cgi['goya']

    "<html>
    
        <body style='background-color : gray; margin-top:50px;'>
          <center>
            <table style='background-color : teal;'>
                <tr><th>Length</th><th>Weigth</th><th>Quality</th><th>Give_For</th><th>Date</th></tr>
                #{get}
            </table>
          </center>
        </body>
    </html"
}