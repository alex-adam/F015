import QtQuick 2.0

Rectangle {
    property int bubbleX
    property int bubbleY

    //Border
    Rectangle {
        x:bubbleConnector.x - 0.25; y: bubbleConnector.y - 0.25;
        width: bubbleConnector.width + 0.5; height: bubbleConnector.height + 0.5
        radius: bubbleConnector.width / 2
        color: "#A7A9AB"
    }

    //BubbleConnection
    Rectangle {
        id: bubbleConnector
        x:bubbleX; y: bubbleY;
        width: 12; height: 12
        radius: 6
        gradient: Gradient {
               GradientStop { position: 0.0; color: "white" }
               GradientStop { position: 1.0; color: "#D1D3D4" }
           }

    }


}

