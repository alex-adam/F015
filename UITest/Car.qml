import QtQuick 2.0


Item {
    id:car


    //F015 itself
    Image {
        id: carbody
        width: 160
        height: 160
        fillMode: Image.PreserveAspectFit
        source: "f015.png"
    }


    //Tire in Back
    Image {
        id: btire
        width: 17
        height: 17
        x: 34
        y: 83
        fillMode: Image.PreserveAspectFit
        source: "rad.png"

        RotationAnimation on rotation {
            id: btireAnim
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 9500
            }
    }


    //Front-Tire
    Image {
        id:ftire
        width: 17
        height: 17
        x: 114
        y: 83
        fillMode: Image.PreserveAspectFit
        source: "rad.png"


        RotationAnimation on rotation {
            id: ftireAnim
                loops: Animation.Infinite
                from: 0
                to: 360
                duration: 9500
            }
    }




}

