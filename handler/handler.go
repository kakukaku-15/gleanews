package handler

import (
	"net/http"
	"github.com/labstack/echo/v4"
)

func helloworld() echo.HandlerFunc {
	return func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, World!")
	}
}
