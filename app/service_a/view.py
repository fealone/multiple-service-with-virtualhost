from fastapi import APIRouter

router = APIRouter()


@router.get("/")
async def hello_world() -> str:
    return "Hello World with Service A"
