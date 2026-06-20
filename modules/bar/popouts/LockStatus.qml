import QtQuick.Layouts
import CyberShell.Config
import CyberShell.components
import CyberShell.services

ColumnLayout {
    spacing: Tokens.spacing.small

    StyledText {
        text: qsTr("Capslock: %1").arg(Hypr.capsLock ? "Enabled" : "Disabled")
    }

    StyledText {
        text: qsTr("Numlock: %1").arg(Hypr.numLock ? "Enabled" : "Disabled")
    }
}
