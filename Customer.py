class Customer:
    def __init__(self, name: str) -> None:
        self.name = name

    def greet(self) -> None:
        print(f"Hello, my name is {self.name}")