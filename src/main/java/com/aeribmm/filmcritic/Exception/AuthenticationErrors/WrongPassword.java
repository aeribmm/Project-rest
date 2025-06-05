package com.aeribmm.filmcritic.Exception.AuthenticationErrors;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class WrongPassword extends RuntimeException{
    public WrongPassword() {
        super("Password is to short,minimum length is 8");
    }
}
