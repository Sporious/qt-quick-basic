import QtQuick 2.0
import "main.js" as JS
Item {
    id: myButton
    //Set properties that are defined in the constructor
    property int var_x
    property int var_y
    property string var_color

    Rectangle {
        id: myButtonRectangle
        x: var_x
        y: var_y
        color: var_color
        height: 50
        width: 50
        MouseArea {
            x: 0
            y: 0
            //Bind mousearea to rectangle dimensions
            width: parent.width
            height: parent.height
            //When this MouseArea is clicked perform the nested code
            onClicked: {
                //Check the returns from the JS code are valid then set the properties
                var a = JS.clicked(), b = JS.clickedb(), c = JS.clickedc()
                if (a != "") parent.color = a
                if (b != "") parent.x = b
                if (c != "") parent.y = c
            }
        }

    }
}
