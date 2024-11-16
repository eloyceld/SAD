if [ "$(sha256sum archivo.txt | awk '{print $1}')" = "HASH_ESPERADO" ]; then echo "Son iguales"; else echo "No son iguales"; fi
