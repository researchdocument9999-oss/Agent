# Agent – OpenBot server on GitHub Codespaces

Runs an OpenBot server in the cloud, with no laptop needed.

## Steps (from an Android phone)
1. Open this repo on github.com in Chrome. Tap **Code > Codespaces > Create codespace on main**.
2. Wait for it to open. OpenBot starts by itself (the first start takes 2-3 minutes).
3. In the terminal, run: `bash login.sh`. Enter your OpenBot email and the code from your email.
4. In Chrome, open https://openbot.run/app, sign in with the same email, and pick the server **OpenBot**.

## Notes
- The bot runs only while the Codespace is open. The Codespace stops after 30 minutes idle.
- Your free Codespaces hours are limited each month. Stop it when you are done: github.com/codespaces.
- Your sign-in is kept in the `openbot-data` volume, so next time only step 1 and 4 are needed.
- Status: `docker exec openbot openbot status`. Logs: `docker logs openbot`.
