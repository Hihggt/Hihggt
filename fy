                #模拟拽托
                action = ActionChains(self.browser) # 实例化一个action对象
                action.click_and_hold(swipe_button).perform() # perform()用来执行ActionChains中存储的行为
                action.reset_actions()
                action.move_by_offset(580, 0).perform() # 移动滑块

            except Exception as e:
                print ('get button failed: ', e)


if __name__ == "__main__":

    # 使用之前请先查看当前目录下的使用说明文件README.MD
    # 使用之前请先查看当前目录下的使用说明文件README.MD
    # 使用之前请先查看当前目录下的使用说明文件README.MD

    chromedriver_path = "/Users/bird/Desktop/chromedriver.exe" #改成你的chromedriver的完整路径地址
    weibo_username = "改成你的微博账号" #改成你的微博账号
    weibo_password = "改成你的微博密码" #改成你的微博密码

    a = taobao_infos()
    a.login() #登录
    a.crawl_good_data() #爬取天猫商品数据
