import pynecone as pc
import asyncio

class State(pc.State):
    counter: int = 0
    is_timer_start: bool = False
    def timer_start(self):
        self.is_timer_start = True
        if self.is_timer_start:
            return self.tick
    def timer_stop(self):
        self.is_timer_start = False
        if self.is_timer_start:
            return self.tick 
    async def tick(self):    
        if self.is_timer_start:
            await asyncio.sleep(1)
            self.counter += 1
            return self.tick
        
def index():
    return pc.center(
        pc.vstack(
            pc.heading("Timer", 
                font_size="2em", 
                background_image="linear-gradient(271.68deg, #211344 25%, #443213 50% )",
                background_clip="text",
            ),
            pc.hstack(
                pc.button("START", 
                    border="0.15em solid",
                    on_click=State.timer_start,
                    border_radius="0.5em",
                    padding="0.5em",
                    _hover={
                        "color": "rgb(107,99,246)",
                    },
                ),
 
                pc.button("STOP", 
                    border="0.15em solid",
                    on_click=State.timer_stop,
                    border_radius="0.5em",
                    padding="0.5em",
                    _hover={
                        "color": "rgb(107,99,246)",
                    },
                ),
            ),
            pc.link(
                State.counter,
                href="#",
                border="0.1em solid",
                #padding="0.5em",
                padding="0.1em",
                border_radius="0.5em",
                _hover={
                    "color": "rgb(107,99,246)",
                },
                font_size=["2em", "3em", "3em", "4em"],
                font_weight=800,
                font_family="Inter",
                background_image="linear-gradient(271.68deg, #EE756A 25%, #756AEE 50%)",
                background_clip="text",
            ),
            spacing="1.5em",
            font_size="2em",
        ),
        padding_top="10%",
    )

meta = [
    {"name": "theme_color", "content": "#FFFFFF"},
    {"char_set": "UTF-8"},
    {"property": "og:url", "content": "url"},
]
# Add state and page to the app.
app = pc.App(state=State)
app.add_page(
    index,
    meta=meta,
    title="Init Tunnel App",
    description="A beautiful timer app used by init tunnel",    
    )
app.compile()
