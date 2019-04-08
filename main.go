package main

import (
	"github.com/gin-gonic/gin"
	"github.com/yanyiwu/gojieba"
)

func main() {
	x := gojieba.NewJieba()
	defer x.Free()

	r := gin.Default()
	r.POST("/cut", func(c *gin.Context) {
		dt, err := c.GetRawData()
		if err != nil {
			c.JSON(400, err.Error())
			return
		}

		c.JSON(200, x.Cut(string(dt), true))
	})

	if err := r.Run(); err != nil {
		panic(err.Error())
	}
}
