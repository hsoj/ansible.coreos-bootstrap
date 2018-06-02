#!/usr/bin/env bash

COREOS_EXEC_PATH="${COREOS_EXEC_PATH:-/opt}"

cat <<EOF > "${COREOS_EXEC_PATH}/bin/python"
#!/usr/bin/env bash
export LD_LIBRARY_PATH="${COREOS_EXEC_PATH}/lib:$LD_LIBRARY_PATH"
${COREOS_EXEC_PATH}/bin/pypy "\$@"
EOF

chmod 0755 "${COREOS_EXEC_PATH}/bin/python"