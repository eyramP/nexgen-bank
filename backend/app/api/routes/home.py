from fastapi import APIRouter
from app.core.logging import get_logger

logger = get_logger()


router = APIRouter(prefix="/home")

@router.get("/")
def home():
    logger.info("Home pages accesssed")
    logger.debug("Home pages accesssed")
    logger.error("Home pages accesssed")
    logger.warning("Home pages accesssed")
    logger.critical("Home pages accesssed")
    return {
        "message": "Welcome to the NexGen Bank API"
    }