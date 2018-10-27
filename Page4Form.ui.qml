
import QtQuick 2.7

import QtQuick.Layouts 1.0
//import QtMultimedia 5.5
import QtQuick.Controls 2.0



Item {
    width: 800
    property alias mouseArea1: mouseArea1
    property alias mouseArea: mouseArea
    property alias switch4: switch4
    property alias switch3: switch3
    property alias radioButton1: radioButton1
    property alias switchDelegate1: switchDelegate1
    property alias switchDelegate2: switchDelegate2
    property alias switch2: switch2
    property alias switch1: switch1
    property alias switchalarma: switchalarma
    property alias button: button
    z: -1

    GroupBox {
        id: groupBox1
        x: 443
        y: 17
        visible: false
        z: -1
        title: qsTr("Sensores")

        GridLayout {
            rows: 4
            columns: 2

            Button {
                id: button1
                text: qsTr("Test")
            }

            RadioButton {
                id: radioButton2
                text: qsTr("Detector de Movimiento")
            }

            Button {
                id: button2
                text: qsTr("Test")
            }

            Switch {
                id: switch1
            }

            Label {
                id: label1
                text: switch1.checked ? "Abierta" : "Cerrada"
            }

            Switch {
                id: switch2
                //text: qsTr("Ventana 02")
            }

            Label {
                id: label2
                text: switch2.checked ? "Abierta" : "Cerrada"
            }
        }

        Text {
            id: textmodulo
            x: -17
            y: 225
            width: 183
            height: 52
            color: "#ffffff"
            text: qsTr("Smart Switch")
            scale: 1
            z: 3
            font.bold: false
            font.pixelSize: 28

            SwitchDelegate {
                id: switchDelegate1
                x: 0
                y: 34
            }

            SwitchDelegate {
                id: switchDelegate2
                x: 0
                y: 72
                text: qsTr("Switch 2")
            }
        }

        Text {
            id: text3
            x: -373
            y: 282
            width: 110
            height: 37
            color: "#ffffff"
            text: qsTr("PAge4")
            font.pixelSize: 30
            z: 1

            Switch {
                id: switchalarma
                x: 126
                y: -2
                //text: switchalarma.checked ? "Encendida" : "Apagada"
                antialiasing: false
            }
        }

        GroupBox {
            id: grupocamara
            x: -426
            y: -30
            width: 329
            height: 267
            z: -1
            title: qsTr("Cámaras")

            Switch {
                id: switchcamara
                x: 198
                y: -50
                //text: qsTr("Encender")
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
            z: -3
        }

        Button {
            id: button
            x: 226
            y: 271
            text: qsTr("Salir")
            z: 0
        }
    }



    Image {
        id: image
        x: 0
        y: 0
        source: "res/FondoReuniones.png"


        RadioButton {
            id: radioButton
            x: 537
            y: 162
        }

        RadioButton {
            id: radioButton1
            x: 537
            y: 108
        }

        Switch {
            id: switch3
            x: 236
            y: 136
            rotation: 180
            //state: serialito.
        }

        Switch {
            id: switch4
            x: 236
            y: 190
            rotation: 180
        }

        Switch {
            id: switch5
            x: 223
            y: 295
            rotation: 180
        }

        MouseArea {
            id: mouseArea
            x: 0
            y: 228
            width: 100
            height: 252
        }

        MouseArea {
            id: mouseArea1
            x: 737
            y: 202
            width: 100
            height: 248
        }



    }

    Row {
        id: row
        x: 503
        y: 216
        width: 153
        height: 113
        rotation: -90

        RadioButton {
            id: radioButton4
        }

        RadioButton {
            id: radioButton3
        }
    }





}
