

THEMESDDM="/usr/share/sddm/themes/swylof/Style.qml"

cat <<EOF > "$THEMESDDM"

pragma Singleton 
import QtQuick 2.15

QtObject {
    // Gunakan readonly property untuk keamanan agar tidak sengaja terubah
    readonly property color primary: "#2196F3"
    readonly property color secondary: "#FFC107"
    readonly property color background: "#F5F5F5"
    readonly property color textMain: "#333333"
    
    // Anda juga bisa mengelompokkan warna
    readonly property var darkTheme: {
        "bg": "#121212",
        "surface": "#1E1E1E",
        "text": "#FFFFFF"
    }
}

EOF
