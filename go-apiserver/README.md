# GO를 시작해보자

- Edge 사이드에 추론API 서버를 두어야함
- 다만 현재 있는 Python API 보다 좀 더 Tack time 이 나올 수 있는 서버는 없을까해서 일단 빠르다는 GO에 도전해보기로함.
- Edge 사이드 PC는 Windows 이기 때문에 EXE로 Build 하고 실행하여야함
- 우리가 할 것은 간단한 개/고양이 판정모델을 GO 서버로 돌려보는 것. 이 판정모델은 어디서 가져오지?



### Environment

- Ubuntu 20.04 in Windows 10
  - 최근에는 Windows 10의 윈도우 스토어에서 Ubuntu 를 이용할 수 있도록 개발되었다. 윈도우와는 독립적인 환경으로 제공되는 듯 한데 내 생각에는 윈도우와 같은 가상환경을 제공해준다. 기존의 윈도우 폴더들은 /mnt/ 폴더에 마운트 되어 있는 상태. 세상 참 좋아졌다.



### GO 설치하기

GO 설치 내용



### GO기반 Webserver GIN을 사용해서 API서버 구성

```bash
go mod init example-go
go get -u github.com/gin-gonic/gin
```



example.go

```go
package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080 (for windows "localhost:8080")
}
```



```
go run example.go
```





![image-20210516120425450](C:\Users\Jongchan Park\Desktop\dev\blog-posts\go-apiserver\img\image-20210516120425450.png)



### Ubuntu에서 잘 실행되는 웹서버를 Windows EXE 파일로 빌드

```bash
GOOS=windows GOARCH=amd64 go build
```



### 추론모델 개발

찬희/방울이 추론 모델로 해볼까?





추론모델을 API서버에 심기





API 동작 테스트





### 마치며





이슈사항































