rm -f ~/.config/sway/xml/* || true #cleaning up before applying

case "$LANG" in
"es_ES.UTF-8")
        for file in ~/.config/sway/lang/es/*; do
            name="$(basename "$file")"
            ln -s "$file" "$HOME/.config/sway/xml/$name"
        done
        ;;
*)
        for file in ~/.config/sway/lang/en/*; do
            name="$(basename "$file")"
            ln -s "$file" "$HOME/.config/sway/xml/$name"
        done
        ;;
esac
