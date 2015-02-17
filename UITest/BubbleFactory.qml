import QtQuick 2.0

Item {
    id: bubbleFact

    property string stat
    property string imageOne
    property string imageTwo
    property string imageThree
    property string imageFour
    property string imageFive
    property string imageSix
    property string imageSeven
    property string imageEight
    property string imageNine
    property string imageTen
    property string imageEleven
    property string imageTwelve


    Bubble {
        id: bubble2
        x: 545
        height: 120
        width: 120
        source:stat+imageTwo
        animMinHeight: 290
        animMaxHeight: 180
        animDuration: 7500
        opacity: 0.6
    }

    Bubble {
        id: bubble3
        x: 670
        height: 100
        width: 100
        source:stat+imageThree
        animMinHeight: 360
        animMaxHeight: 260
        animDuration: 2750
        animPause: 5300
        opacity: 0.3
    }



    Bubble {
        id: bubble5
        x: 780
        height: 120
        width: 120
        source:stat+imageFive
        animMinHeight: 360
        animMaxHeight: 240
        animDuration: 8000
        opacity: 0.6
    }

    Bubble {
        id: bubble9
        x: 1035
        height: 110
        width: 110
        source:stat+imageNine
        animMinHeight: 380
        animMaxHeight: 280
        animDuration: 6500
        opacity: 0.3
    }

    Bubble {
        id: bubble7
        x: 890
        height: 120
        width: 120
        source:stat+imageSeven
        animMinHeight: 340
        animMaxHeight: 220
        animDuration: 6000
        opacity: 0.4
    }

    Bubble {
        id: bubble8
        x: 940
        height: 130
        width: 130
        source:stat+imageEight
        animMinHeight: 380
        animMaxHeight: 260
        animDuration: 7000
        opacity: 0.5
    }



    Bubble {
        id: bubble10
        x: 1090
        height: 140
        width: 140
        source:stat+imageTen
        animMinHeight: 340
        animMaxHeight: 240
        animDuration: 7500
        opacity: 0.7
    }

    Bubble {
        id: bubble12
        x: 1240
        height: 130
        width: 130
        source:stat+imageTwelve
        animMinHeight: 220
        animMaxHeight: 180
        animDuration: 8000
        opacity: 0.5
    }

    Bubble {
        id: bubble11
        x: 1110
        height: 160
        width: 160
        source:stat+imageEleven
        animMinHeight: 260
        animMaxHeight: 360
        animDuration: 7500
    }

    Bubble {
        id: bubble1
        x: 450
        height: 160
        width: 160
        source: stat+imageOne
        animMinHeight: 200
        animMaxHeight: 250
        animDuration: 9000
    }

    Bubble {
        id: bubble4
        x: 710
        height: 160
        width: 160
        source:stat+imageFour
        animMinHeight: 300
        animMaxHeight: 350
        animDuration: 8000
    }

    Bubble {
        id: bubble6
        x: 890
        height: 160
        width: 160
        source:stat+imageSix
        animMinHeight: 340
        animMaxHeight: 380
        animDuration: 6000
    }


    //BubbleConnector
     BubbleConnector {
         bubbleX: 525; bubbleY: 585;
     }
     BubbleConnector {
         bubbleX: 785; bubbleY: 585;
     }
     BubbleConnector {
         bubbleX: 965; bubbleY: 585;
     }
     BubbleConnector {
         bubbleX: 1185; bubbleY: 585;
     }


}

