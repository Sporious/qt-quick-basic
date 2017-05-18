import QtQuick 2.6
import QtQuick.Window 2.2

//My JS library bound with the name JS
import "main.js" as JS

Window {
    //Name window and set dimensions
    id: mainwindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Test")

    //Subelement of a rectangle for top border
    Rectangle {
        //Details of the top border
        color: "grey"
        x: 0
        y: 0
        width: parent.width
        height: parent.height * 0.1
        //Text ontop of the border, as a subelement of the border
        Text {
            //Text styling options
            style: Text.Raised
            horizontalAlignment: Text.AlignHCenter
            color: "black"
            font.pixelSize: parent.height / 2
            text: "Enter values in the boxes to the right then click a cube"
            anchors.fill: parent
        }
    }

    //Call custom element MyButton passing parameters to it
    //This custom element is defined in MyButton.qml
    MyButton {
       var_color: "yellow"
       var_x: 43
       var_y: 99
    }
    MyButton {
        var_color: "red"
        var_x: 190
        var_y: 130
    }

    MyButton {
        var_color: "green"
        var_x: 140
        var_y: 300
    }
    //This custom element is defined in CustomTextInput.qml
    CustomTextInput {
        id: "colourPicker"
        var_minusx: 5
        var_y: 50
        header: "Colour"

    }

    CustomTextInput {
        id: "xTextInput"
        var_minusx: 5
        var_y: 150
        header: "X coord"
    }

    CustomTextInput {
        id: "yTextInput"
        var_minusx: 5
        var_y: 250
        header: "Y coord"
    }



}
