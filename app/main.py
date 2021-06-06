from fastapi import FastAPI

import service_a

import service_b


app = FastAPI()

app.include_router(service_a.router, prefix="/service-a")
app.include_router(service_b.router, prefix="/service-b")
