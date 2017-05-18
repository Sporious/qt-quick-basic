import QtQuick 2.0


Item {
    //Set location
    property int var_minusx
    property int var_y

    //Set title of input box
    property string header

    //Bind the textinput subelement as textInput
    property alias textInput: _a
    //Background Rectangle
    Rectangle {
        x: mainwindow.width - var_minusx - 200
        y: var_y
        width: 200
        height: 90
        radius: 10
        color: "teal"
        //Title of text input
        Text {
            text: header
            font.pixelSize: parent.height/2.5


        }
        //Where we type into
        TextInput {
            //Other end of the binding
            id: _a
            y: 40
            //Align text centre
            horizontalAlignment: TextInput.AlignHCenter
            font.pixelSize: parent.height/2
            width: parent.width
            height: parent.height
            color: "white"
        }
    }
}
