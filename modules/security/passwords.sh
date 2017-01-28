generate_password() {
	if [ -n "$1" ] && [ "$1" -ge 0 ]; then
		openssl rand -base64 $1 | colrm $(expr $1 + 1) 2>&-;
	else
		openssl rand -base64 32 | colrm $(expr 32 + 1) 2>&-;
	fi
};

alias genpass=generate_password
