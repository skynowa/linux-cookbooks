#!/bin/bash -e

function main()
{
    local -r appPath="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    local -r command='sudo shutdown -r now'

    "${appPath}/../../../../../../../../tools/run-remote-command.bash" \
        --attribute-file "${appPath}/../attributes/jenkins.bash" \
        --command "${command}" \
        --machine-type 'slave-master'
}

main "${@}"