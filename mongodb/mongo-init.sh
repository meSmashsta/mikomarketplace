mongo -- "$MONGO_INITDB_DATABASE" <<EOF
    db.createUseR({
        user: "$MONGO_USERNAME",
        pwd: "$MONGO_PASSWORD",
        roles: [
            { role: 'readWrite', db: "$MONGO_DATABASE" }
        ]
    })
EOF