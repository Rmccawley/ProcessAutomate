#Requires AutoHotkey v2.0

#Include "Button.ahk"

Class WebsitePage{

    Buttons(){
        Facebook:= Button().New("Facebook", "{1,1}", "OpenFacebook().bind", "Thumbnails\Facebook.png")
        Google:= Button().New("Google", "{1,2}", "OpenGoogle().bind", "Thumbnails\Facebook.png")
        Amazon:= Button().New("Amazon", "{1,3}", "OpenAmazon().bind", "Thumbnails\Facebook.png")
        Twitter:= Button().New("Twitter", "{1,4}", "OpenTwitter().bind", "Thumbnails\Facebook.png")
        Netflix:= Button().New("Netflix", "{1,5}", "OpenNetflix().bind", "Thumbnails\Facebook.png")
    }

    OpenGoogle(){
        Run "https://www.google.com/"
    }

    OpenAmazon(){
        Run "https://www.amazon.com/"
    }

    OpenFacebook(){
        Run "https://www.facebook.com/"
    }

    OpenTwitter(){
        Run "https://twitter.com/"
    }

    OpenNetflix(){
        Run "https://www.netflix.com/"
    }
}