import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
       property bool checked: false
       property alias text : buttonText.text
       property alias fcolor: buttonText.color

       //! [button]
       Accessible.name: text
       Accessible.description: "This button does " + text
       Accessible.role: Accessible.Button
       Accessible.onPressAction: {
           button.clicked()
       }
       //! [button]

       signal clicked

       width: buttonText.width + 20
       height: 30
       color: "transparent"

       radius: 5
       antialiasing: true

       Text {
           id: buttonText
           text: parent.description
           anchors.centerIn: parent
           font.pixelSize: 19
           style: Text.Sunken
           color: "#939598"
           styleColor: "white"
       }

       MouseArea {
           id: mouseArea
           anchors.fill: parent
           onClicked: parent.clicked()
       }

       Keys.onSpacePressed: clicked()
   }



