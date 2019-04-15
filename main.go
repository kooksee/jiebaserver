package main

import (
	"encoding/json"
	"github.com/gin-gonic/gin"
	"github.com/yanyiwu/gojieba"
	"os"
	"path"

	"github.com/deckarep/golang-set"
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

	r.POST("/jaccard", func(c *gin.Context) {
		// 版本管理每一个API
		// c.GetHeader("x-version")

		dt, err := c.GetRawData()
		if err != nil {
			c.String(400, err.Error())
			return
		}

		var _rd []string
		if err := json.Unmarshal(dt, &_rd); err != nil {
			c.String(400, err.Error())
			return
		}
		_rd0 := mapset.NewSet()
		for _, _i := range x.Cut(string(_rd[0]), true) {
			_rd0.Add(_i)
		}

		_rd1 := mapset.NewSet()
		for _, _i := range x.Cut(string(_rd[1]), true) {
			_rd1.Add(_i)
		}

		c.JSON(200, gin.H{
			"code": "ok",
			"data": len(_rd0.Intersect(_rd1).ToSlice()) / len(_rd0.Union(_rd1).ToSlice()),
		})
	})

	r.POST("/jaccard_less", func(c *gin.Context) {
		// 版本管理每一个API
		// c.GetHeader("x-version")

		dt, err := c.GetRawData()
		if err != nil {
			c.String(400, err.Error())
			return
		}

		var _rd []string
		if err := json.Unmarshal(dt, &_rd); err != nil {
			c.String(400, err.Error())
			return
		}
		_rd0 := mapset.NewSet()
		for _, _i := range x.Cut(string(_rd[0]), true) {
			_rd0.Add(_i)
		}

		_rd1 := mapset.NewSet()
		for _, _i := range x.Cut(string(_rd[1]), true) {
			_rd1.Add(_i)
		}

		_l := len(_rd0.ToSlice())
		if _l < len(_rd1.ToSlice()) {
			_l = len(_rd1.ToSlice())
		}

		c.JSON(200, gin.H{
			"code": "ok",
			"data": len(_rd0.Intersect(_rd1).ToSlice()) / _l,
		})
	})

	if err := r.Run(":8080"); err != nil {
		panic(err.Error())
	}
}
