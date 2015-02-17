import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: container

    property alias source: img.source


    property int animMinHeight
    property int animMaxHeight
    property int animDuration
    property int animPause

    //Line
    Rectangle {
        id: bubbleline
        x:img.width / 2; y: img.y + img.height -1;
        width: 1.5
        height: 595 - img.y - img.height -5
        radius: 1
        color: "#D8D8D8"

    }


    //BubbleImage
    Image {
        id: img
        height: parent.height
        width: parent.width


        MouseArea { id: mouseArea; anchors.fill: parent }

                states: State {
                    name: "pressed"; when: mouseArea.pressed
                    PropertyChanges { target: img; scale: 0.9 }

                }

                transitions: Transition {
                    NumberAnimation { properties: "scale"; duration: 100; easing.type: Easing.InOutQuad }
                }

                SequentialAnimation on y {
                    loops: Animation.Infinite

                    // Move from minHeight to maxHeight
                    NumberAnimation {
                        from: animMinHeight; to: animMaxHeight
                        easing.type: Easing.InOutCubic; duration: animDuration

                    }
                    PauseAnimation { duration: animPause }

                    // Then move back
                    NumberAnimation {
                        from: animMaxHeight; to: animMinHeight
                        easing.type: Easing.InOutCubic; duration: animDuration
                    }

                    PauseAnimation { duration: animPause }
                }
    }






}

