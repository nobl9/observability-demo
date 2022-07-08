from locust import HttpUser, task, between

class StandardUser(HttpUser):
    wait_time = between(1,5)

    @task(90)
    def good(self):
        self.client.get("/good")

    @task(9)
    def ok(self):
        self.client.get("/ok")

    @task(1)
    def bad(self):
        self.client.get("/bad")

    @task(2)
    def acceptable(self):
        self.client.get("/acceptable")

    @task(2)
    def veryslow(self):
        self.client.get("/veryslow")

    @task(3)
    def unpredictable(self):
        self.client.get("/err")

    @task(2)
    def not_found(self):
        self.client.get("/notfound")

