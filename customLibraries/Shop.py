from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Shop():

    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary");


    #method name will be converted to keyword name
    @keyword
    def hello_world(self):
        print("hello")

    @keyword
    def add_items_to_cart_and_checkout(self,productsList):
        productsTitles = self.selLib.get_webelements("css:.card-title")
        i=1
        for productsTitle in productsTitles:
            if productsTitle.text in productsList:
                self.selLib.click_button("xpath:(//*[@class='card-footer'])["+str(i)+"]/button")
            i=i+1

        self.selLib.click_link("css:li.active a")


