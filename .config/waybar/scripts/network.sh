#!/bin/sh

if [[ $(nmcli n connectivity) == "full" ]]; then
	nmcli n off
else
	nmcli n on
fi
