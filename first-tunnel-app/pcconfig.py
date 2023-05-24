import pynecone as pc

class FirsttunnelappConfig(pc.Config):
    pass

config = FirsttunnelappConfig(
    app_name="first_tunnel_app",
    db_url="sqlite:///pynecone.db",
    env=pc.Env.DEV,
)