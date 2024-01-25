# curl常用命令
```code 
使用curl上传文件
curl -X POST -F "file=@/path/to/your/file.jpg" http://localhost:8080/upload
r := gin.Default()
r.POST("/upload", func(c *gin.Context) {
	file, err := c.FormFile("file")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"message": "No file uploaded",
		})
		return
	}

	// Save the file to disk
	err = c.SaveUploadedFile(file, "uploads/"+file.Filename)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"message": "Failed to save file",
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "File uploaded successfully",
	})
})
r.Run(":8080")

```
