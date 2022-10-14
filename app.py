from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root():
    return {"message": "iNeuron Assignment for docker and docker action."}
