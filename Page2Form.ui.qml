import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
//import QtMultimedia 5.5



Item {
    width: 800
    property alias switchDelegate1: switchDelegate1
    property alias switchDelegate2: switchDelegate2
    property alias switchalarma: switchalarma
    property alias button: button
    z: -1






    Image {
        id: image
        x: 0
        y: 0
        z: 4
        source: "res/Fondogerencia.png"

        Switch {
            id: switch1
            x: 250
            y: 103
            rotation: 180
        }

        Switch {
            id: switch2
            x: 250
            y: 150
            rotation: 180
        }

        Switch {
            id: switch3
            x: 250
            y: 192
            rotation: 180
        }

        Switch {
            id: switch4
            x: 211
            y: 303
            rotation: 180
        }

        RadioButton {
            id: radioButton
            x: 540
            y: 236
        }

        RadioButton {
            id: radioButton1
            x: 540
            y: 177
        }
    }

    Text {
        id: text3
        x: 82
        y: 334
        width: 110
        height: 37
        color: "#ffffff"
        text: qsTr("Gerencia")
        visible: true
        font.pixelSize: 30
        z: 1

        Switch {
            id: switchalarma
            x: 126
            y: -2
            text: switchalarma.checked ? "Encendida" : "Apagada"
            antialiasing: false
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 800
        height: 483
        color: "#00557f"
        visible: false
        z: -3
    }

    Button {
        id: button
        x: 681
        y: 323
        text: qsTr("Salir")
        visible: false
        z: 0
    }

    GroupBox {
        id: grupocamara
        x: 29
        y: 22
        width: 329
        height: 267
        visible: false
        z: -1
        title: qsTr("Cámaras")

        Switch {
            id: switchcamara
            x: 198
            y: -50
            text: qsTr("Encender")
            antialiasing: false
        }
    }

    Text {
        id: textmodulo
        x: 438
        y: 277
        width: 183
        height: 52
        color: "#ffffff"
        text: qsTr("Smart Switch")
        visible: false
        scale: 1
        z: 3
        font.bold: false
        font.pixelSize: 28

        SwitchDelegate {
            id: switchDelegate1
            x: 0
            y: 34
            text: qsTr("Switch 1")
        }

        SwitchDelegate {
            id: switchDelegate2
            x: 0
            y: 72
            text: qsTr("Switch 2")
        }
    }


}
