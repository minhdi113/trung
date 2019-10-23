<%-- 
    Document   : texttospeech
    Created on : Oct 1, 2019, 8:57:29 PM
    Author     : dktkd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Text To Speech</title>
        <%
            String s = (String) request.getAttribute("link");
        %>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <style>
            textarea {
                width: 50%;
                height: 200px;
            }
            .form-control-range {
                width: 50%;
            }
            .container {
                color: #ffffff;
                margin-left: 30%;
                margin-right: 30%;
                margin-top: 5%;
                z-index: 999;
                
            }
            body{
                background-image: url("background.jpg");
/*                 filter: blur(8px);
                -webkit-filter: blur(8px);*/
                background-position: center;
                color: white;
                background-color: rgba(255,255,255,0.1);
    background-blend-mode: darken;
    
            }
            #submit {
                display: inline-block;
                *display: inline;
                zoom: 1;
                padding: 6px 20px;
                margin: 0;
                cursor: pointer;
                border: 1px solid #bbb;
                overflow: visible;
                font: bold 13px arial, helvetica, sans-serif;
                text-decoration: none;
                white-space: nowrap;
                color: #555;

                background-color: #ddd;
                background-image: -webkit-gradient(linear, left top, left bottom, from(rgba(255,255,255,1)), to(rgba(255,255,255,0)));
                background-image: -webkit-linear-gradient(top, rgba(255,255,255,1), rgba(255,255,255,0));
                background-image: -moz-linear-gradient(top, rgba(255,255,255,1), rgba(255,255,255,0));
                background-image: -ms-linear-gradient(top, rgba(255,255,255,1), rgba(255,255,255,0));
                background-image: -o-linear-gradient(top, rgba(255,255,255,1), rgba(255,255,255,0));
                background-image: linear-gradient(top, rgba(255,255,255,1), rgba(255,255,255,0));

                -webkit-transition: background-color .2s ease-out;
                -moz-transition: background-color .2s ease-out;
                -ms-transition: background-color .2s ease-out;
                -o-transition: background-color .2s ease-out;
                transition: background-color .2s ease-out;
                background-clip: padding-box; /* Fix bleeding */
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                -moz-box-shadow: 0 1px 0 rgba(0, 0, 0, .3), 0 2px 2px -1px rgba(0, 0, 0, .5), 0 1px 0 rgba(255, 255, 255, .3) inset;
                -webkit-box-shadow: 0 1px 0 rgba(0, 0, 0, .3), 0 2px 2px -1px rgba(0, 0, 0, .5), 0 1px 0 rgba(255, 255, 255, .3) inset;
                box-shadow: 0 1px 0 rgba(0, 0, 0, .3), 0 2px 2px -1px rgba(0, 0, 0, .5), 0 1px 0 rgba(255, 255, 255, .3) inset;
                text-shadow: 0 1px 0 rgba(255,255,255, .9);

                -webkit-touch-callout: none;
                -webkit-user-select: none;
                -khtml-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

        </style>
    </head>
    <body>
       
  
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
            <a class="navbar-brand" href="textToSpeech" >TextToSpeech</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>

        </nav>
        <br>
        <div class="container">
            <form name="send" action="textToSpeech" method="POST">
                <table>
                    <tr>
                        <td>
                            <div class="form-check-inline" name="voice">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" value="banmai" checked="checked">Bạn Mai(Nữ giọng Bắc)
                                </label>
                            </div> 
                        </td>
                        <td>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" value="leminh">Lê Minh(Nam giọng Bắc)
                                </label>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" value="lannhi">Lan Nhi(Nữ giọng Nam)
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" value="female">Thu Dung(Nữ giọng Bắc)
                                </label>
                            </div>
                        </td>
                    </tr>



                    <tr>
                        <td>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" value="male">Cao Chung(Nam giọng Bắc)
                                </label>
                            </div>
                        </td>
                        <td>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" class="form-check-input" name="optradio" value="hatieumai">Hà Tiểu Mai(Nữ giọng Nam)
                                </label>
                            </div>
                        </td>
                    </tr>



                </table>
                <br/>
                <div class="form-group">
                    Tốc độ:
                    <input type="range" class="form-control-range" name="range" min="-3" max="3">
                </div>
                <textarea id="text" name="alltext" maxlength="500" placeholder="Nội dung (tối đa 500 kí tự)" rows="5"></textarea>
                <br/>
                <input type="submit" id="submit" value="Bắt đầu">
            </form>
            </br>
        </div>
        



<!--        <iframe src="<%=s%>" allow="autoplay" style="display:none" id="iframeAudio">
        </iframe> -->
        <audio autoplay  id="playAudio">
            <source src="<%=s%>">
        </audio>
<!--        <script>
            var isChrome = /Chrome/.test(navigator.userAgent) && /Google Inc/.test(navigator.vendor);
            if (!isChrome) {
                $('#iframeAudio').remove()
            } else {
                $('#playAudio').remove() //just to make sure that it will not have 2x audio in the background 
            }
        </script>-->
    </body>
</html>
