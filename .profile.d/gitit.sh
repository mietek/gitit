source '/app/.profile.d/buildpack.sh'


format_gitit_conf () {
	[[ -n "${GITIT_ADDRESS:+_}" ]] && echo "address: ${GITIT_ADDRESS}"

	echo "port: ${PORT}"

	[[ -n "${GITIT_WIKI_TITLE:+_}" ]] && echo "wiki-title: ${GITIT_WIKI_TITLE}"

	echo 'repository-type: Git'
	echo 'repository-path: wikidata'

	[[ -n "${GITIT_REQUIRE_AUTHENTICATION:+_}" ]] && echo "require-authentication: ${GITIT_REQUIRE_AUTHENTICATION}"
	[[ -n "${GITIT_AUTHENTICATION_METHOD:+_}" ]] && echo "authentication-method: ${GITIT_AUTHENTICATION_METHOD}"
	[[ -n "${GITIT_USER_FILE:+_}" ]] && echo "user-file: ${GITIT_USER_FILE}"
	[[ -n "${GITIT_SESSION_TIMEOUT:+_}" ]] && echo "session-timeout: ${GITIT_SESSION_TIMEOUT}"

	echo 'static-dir: wikidata/static'

	[[ -n "${GITIT_DEFAULT_PAGE_TYPE:+_}" ]] && echo "default-page-type: ${GITIT_DEFAULT_PAGE_TYPE}"
	[[ -n "${GITIT_MATH:+_}" ]] && echo "math: ${GITIT_MATH}"
	[[ -n "${GITIT_MATHJAX_SCRIPT:+_}" ]] && echo "mathjax-script: ${GITIT_MATHJAX_SCRIPT}"
	[[ -n "${GITIT_SHOW_LHS_BIRD_TRACKS:+_}" ]] && echo "show-lhs-bird-tracks: ${GITIT_SHOW_LHS_BIRD_TRACKS}"

	echo 'templates-dir: wikidata/templates'

	[[ -n "${GITIT_LOG_FILE:+_}" ]] && echo "log-file: ${GITIT_LOG_FILE}"
	[[ -n "${GITIT_LOG_LEVEL:+_}" ]] && echo "log-level: ${GITIT_LOG_LEVEL}"
	[[ -n "${GITIT_FRONT_PAGE:+_}" ]] && echo "front-page: ${GITIT_FRONT_PAGE}"
	[[ -n "${GITIT_NO_DELETE:+_}" ]] && echo "no-delete: ${GITIT_NO_DELETE}"
	[[ -n "${GITIT_NO_EDIT:+_}" ]] && echo "no-edit: ${GITIT_NO_EDIT}"
	[[ -n "${GITIT_DEFAULT_SUMMARY:+_}" ]] && echo "default-summary: ${GITIT_DEFAULT_SUMMARY}"
	[[ -n "${GITIT_TABLE_OF_CONTENTS:+_}" ]] && echo "table-of-contents: ${GITIT_TABLE_OF_CONTENTS}"
	[[ -n "${GITIT_PLUGINS:+_}" ]] && echo "plugins: ${GITIT_PLUGINS}"
	[[ -n "${GITIT_USE_CACHE:+_}" ]] && echo "use-cache: ${GITIT_USE_CACHE}"
	[[ -n "${GITIT_CACHE_DIR:+_}" ]] && echo "cache-dir: ${GITIT_CACHE_DIR}"
	[[ -n "${GITIT_MAX_UPLOAD_SIZE:+_}" ]] && echo "max-upload-size: ${GITIT_MAX_UPLOAD_SIZE}"
	[[ -n "${GITIT_MAX_PAGE_SIZE:+_}" ]] && echo "max-page-size: ${GITIT_MAX_PAGE_SIZE}"
	[[ -n "${GITIT_DEBUG_MODE:+_}" ]] && echo "debug-mode: ${GITIT_DEBUG_MODE}"
	[[ -n "${GITIT_COMPRESS_RESPONSES:+_}" ]] && echo "compress-responses: ${GITIT_COMPRESS_RESPONSES}"
	[[ -n "${GITIT_MIME_TYPES_FILE:+_}" ]] && echo "mime-types-file: ${GITIT_MIME_TYPES_FILE}"
	[[ -n "${GITIT_USE_RECAPTCHA:+_}" ]] && echo "use-recaptcha: ${GITIT_USE_RECAPTCHA}"
	[[ -n "${GITIT_RECAPTCHA_PRIVATE_KEY:+_}" ]] && echo "recaptcha-private-key: ${GITIT_RECAPTCHA_PRIVATE_KEY}"
	[[ -n "${GITIT_RECAPTCHA_PUBLIC_KEY:+_}" ]] && echo "recaptcha-public-key: ${GITIT_RECAPTCHA_PUBLIC_KEY}"
	[[ -n "${GITIT_ACCESS_QUESTION:+_}" ]] && echo "access-question: ${GITIT_ACCESS_QUESTION}"
	[[ -n "${GITIT_ACCESS_QUESTION_ANSWERS:+_}" ]] && echo "access-question-answers: ${GITIT_ACCESS_QUESTION_ANSWERS}"
	[[ -n "${GITIT_RPX_DOMAIN:+_}" ]] && echo "rpx-domain: ${GITIT_RPX_DOMAIN}"
	[[ -n "${GITIT_RPX_KEY:+_}" ]] && echo "rpx-key: ${GITIT_RPX_KEY}"
	[[ -n "${GITIT_MAIL_COMMAND:+_}" ]] && echo "mail-command: ${GITIT_MAIL_COMMAND}"

	# To configure reset-password-message, add a gitit.conf file.

	[[ -n "${GITIT_USE_FEED:+_}" ]] && echo "use-feed: ${GITIT_USE_FEED}"
	[[ -n "${GITIT_BASE_URL:+_}" ]] && echo "base-url: ${GITIT_BASE_URL}"
	[[ -n "${GITIT_ABSOLUTE_URLS:+_}" ]] && echo "absolute-urls: ${GITIT_ABSOLUTE_URLS}"
	[[ -n "${GITIT_FEED_DAYS:+_}" ]] && echo "feed-days: ${GITIT_FEED_DAYS}"
	[[ -n "${GITIT_FEED_REFRESH_TIME:+_}" ]] && echo "feed-refresh-time: ${GITIT_FEED_REFRESH_TIME}"
	[[ -n "${GITIT_PDF_EXPORT:+_}" ]] && echo "pdf-export: ${GITIT_PDF_EXPORT}"
	[[ -n "${GITIT_PANDOC_USER_DATA:+_}" ]] && echo "pandoc-user-data: ${GITIT_PANDOC_USER_DATA}"
	[[ -n "${GITIT_XSS_SANITIZE:+_}" ]] && echo "xss-sanitize: ${GITIT_XSS_SANITIZE}"
	[[ -n "${GITIT_RECENT_ACTIVITY_DAYS:+_}" ]] && echo "recent-activity-days: ${GITIT_RECENT_ACTIVITY_DAYS}"

	echo '[Github]'

	[[ -n "${GITIT_OAUTH_CLIENT_ID:+_}" ]] && echo "oauthclientid: ${GITIT_OAUTH_CLIENT_ID}"
	[[ -n "${GITIT_OAUTH_CLIENT_SECRET:+_}" ]] && echo "oauthclientsecret: ${GITIT_OAUTH_CLIENT_SECRET}"
	[[ -n "${GITIT_OAUTH_CALLBACK:+_}" ]] && echo "oauthcallback: ${GITIT_OAUTH_CALLBACK}"
	[[ -n "${GITIT_OAUTH_AUTHORIZE_ENDPOINT:+_}" ]] && echo "oauthoauthorizeendpoint: ${GITIT_OAUTH_AUTHORIZE_ENDPOINT}"
	[[ -n "${GITIT_OAUTH_ACCESS_TOKEN_ENDPOINT:+_}" ]] && echo "oauthaccesstokenendpoint: ${GITIT_OAUTH_ACCESS_TOKEN_ENDPOINT}"
	[[ -n "${GITIT_GITHUB_ORG:+_}" ]] && echo "github-org: ${GITIT_GITHUB_ORG}"
}


touch '/app/gitit.conf'
format_gitit_conf >>'/app/gitit.conf'

git config --global 'user.email' "${GITIT_GIT_USER_EMAIL:-gitit@example.com}"
git config --global 'user.name' "${GITIT_GIT_USER_NAME:-gitit}"

if [[ -n "${GITIT_GIT_URL:+_}" ]]; then
	git clone "${GITIT_GIT_URL}" '/app/wikidata'
	if ! ( cd '/app/wikidata' && git rev-parse HEAD &>'/dev/null' ); then
		rm -rf '/app/wikidata'
		gitit -f '/app/gitit.conf' &
		gitit_pid=$!
		sleep 4
		kill "${gitit_pid}"
		rm -rf '/app/wikidata/.git'
		(
			cd '/app/wikidata' &&
			git init &&
			git remote add 'origin' "${GITIT_GIT_URL}" &&
			git add . &&
			git commit -m 'Initial commit' &&
			git push -u 'origin' 'master'
		)
	fi

	mkdir -p '/app/wikidata/.git/hooks'
	echo -e '#!/bin/sh\ngit push origin master' >'/app/wikidata/.git/hooks/post-commit'
	chmod +x '/app/wikidata/.git/hooks/post-commit'
fi
