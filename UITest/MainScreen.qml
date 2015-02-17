import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id:screen



    Image {
        id: img
        x: 0
        y: 0
        width: 1920
        height: 875
        fillMode: Image.PreserveAspectFit
        source: "screen_small.png"
    }



    Rectangle {
        x:790; y: 117;
        width: 330
        height: 40
        border.color: "#EAEBEC"
        border.width: 1
        radius: 25
        gradient: Gradient {
               GradientStop { position: 0.0; color: "#E9EAEB" }
               GradientStop { position: 1.0; color: "white" }
           }
    }

    AxButton {
        fcolor: "#74CFE7"
        x: 812
        y: 122
        id: socialButton
        text: "Social"
        onClicked: {prop.text = "social/"; placesButton.fcolor= "#939598"; musicButton.fcolor= "#939598"; socialButton.fcolor="#74CFE7"}
    }

    AxButton {
        x: 910
        y: 122
        id: placesButton
        text: "Places"
        onClicked: {prop.text = "places/"; socialButton.fcolor= "#939598"; musicButton.fcolor= "#939598"; placesButton.fcolor="#74CFE7"}
    }

    AxButton {
        x: 1012
        y: 122
        id: musicButton
        text: "Music"
        onClicked: {prop.text = "music/"; socialButton.fcolor= "#939598"; placesButton.fcolor= "#939598"; musicButton.fcolor="#74CFE7"}
    }







    //Path + Icons
    Item {
        Image {
            x: 425; y: 580;
            height: 26;
            fillMode: Image.PreserveAspectFit
            source: "home.png"
        }

        Image {
            x: 1465; y: 572;
            height: 36;
            fillMode: Image.PreserveAspectFit
            source: "gps.png"
        }

        Text {
            x: 1495; y: 582;
            height: 36;
            text: "San Francisco"
            font.pixelSize: 16
            color: "#838588"
        }


        Rectangle {
            id: carline
            x:460; y: 590;
            width: 1000; height: 2
            radius: 1
        }
        DropShadow {
                id: rectShadow;
                anchors.fill: source
                cached: true;
                verticalOffset: 2
                samples: 16
                color: "#E2E3E4"
                smooth: true
                source: carline
            }
    }

    BubbleFactory {
        id:bubFact
        stat: stat = "social/"

        imageOne: "01.png"
        imageTwo: "02.png"
        imageThree: "03.png"
        imageFour: "04.png"
        imageFive: "05.png"
        imageSix: "06.png"
        imageSeven: "07.png"
        imageEight: "08.png"
        imageNine: "09.png"
        imageTen: "10.png"
        imageEleven: "11.png"
        imageTwelve: "12.png"
    }


   Car {
        id: mycar
        x: 420; y: 500
        PropertyAnimation on x { to: 1325; duration: 90000}
    }


    Text {
        id: prop
        text:"social/"
        visible: false

        onTextChanged: bubFact.stat = prop.text
    }

}

