package com.blogdemo.exception;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ParameterException extends RuntimeException {

    private String code;

    public ParameterException() {
    }

    public ParameterException(String message) {
        super("客户端错误"+message);
    }

    public ParameterException(String message, Throwable cause) {
        super(message, cause);
    }

    public ParameterException(Throwable cause) {
        super("客户端错误"+cause);
    }

    public ParameterException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }

}
