from locust import HttpUser, task, between

class StandardUser(HttpUser):
    wait_time = between(1,5)

    @task(10)
    def good(self):
        self.client.get("/good")

    @task(5)
    def ok(self):
        self.client.get("/ok")

    @task(3)
    def bad(self):
        self.client.get("/bad")

    @task(2)
    def acceptable(self):
        self.client.get("/acceptable")

    @task(2)
    def veryslow(self):
        self.client.get("/veryslow")

    @task(5)
    def unpredictable(self):
        self.client.get("/err")

    @task(5)
    def not_found(self):
        self.client.get("/notfound")

