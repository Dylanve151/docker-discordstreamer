# docker-discordstreamer

simple noVNC with Discord to steam something

deploy:
```
docker build --name="discord_streamer" --restart="always" dylanve115/discordstreamer
```
## Environment variables:
### Required:
PASSWORD = VNC Password

SCREENSIZE = Screen resolution of virtual screen (By default: 1048x504x24 as this machtes up with RuneLite with the settings bar open.)
