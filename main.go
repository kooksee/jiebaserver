package main

import (
	"github.com/gin-gonic/gin"
	"github.com/yanyiwu/gojieba"
	"os"
	"path"
)

func main() {
	cur, err := os.Getwd()
	if err != nil {
		panic(err.Error())
	}

	DICT_DIR := path.Join(cur, "dict")
	DICT_PATH := path.Join(DICT_DIR, "jieba.dict.utf8")
	HMM_PATH := path.Join(DICT_DIR, "hmm_model.utf8")
	USER_DICT_PATH := path.Join(DICT_DIR, "user.dict.utf8")
	IDF_PATH := path.Join(DICT_DIR, "idf.utf8")
	STOP_WORDS_PATH := path.Join(DICT_DIR, "stop_words.utf8")

	x := gojieba.NewJieba(DICT_PATH, HMM_PATH, USER_DICT_PATH, IDF_PATH, STOP_WORDS_PATH)
	defer x.Free()

	r := gin.Default()
	r.POST("/cut", func(c *gin.Context) {
		// 版本管理每一个API
		// c.GetHeader("x-version")

		dt, err := c.GetRawData()
		if err != nil {
			c.String(400, err.Error())
			return
		}

		c.JSON(200, x.Cut(string(dt), true))
	})

	if err := r.Run(); err != nil {
		panic(err.Error())
	}
}
