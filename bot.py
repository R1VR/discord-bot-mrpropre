import discord
import yaml

with open('vars.yml') as file:
    try:
        yml_file = yaml.safe_load(file)   
        print(yml_file)
    except yaml.YAMLError as exc:
        print(exc)

token = yml_file['token']
print(token)

client = discord.Client()

@client.event
async def on_ready():
    print('We have logged in as {0.user}'.format(client))


@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('$hello'):
        await message.channel.send('Hello!')

client.run('your token here')

