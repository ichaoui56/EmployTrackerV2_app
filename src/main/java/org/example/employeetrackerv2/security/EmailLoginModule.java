package org.example.employeetrackerv2.security;

import org.example.employeetrackerv2.model.entity.User;
import org.example.employeetrackerv2.dao.IUserDao;

import javax.security.auth.Subject;
import javax.security.auth.callback.*;
import javax.security.auth.spi.LoginModule;
import java.io.IOException;
import java.util.Map;

public class EmailLoginModule implements LoginModule {
    private CallbackHandler callbackHandler;
    private boolean authenticated = false;
    private String email;
    private String password;
    private IUserDao userDao;

    public EmailLoginModule(IUserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void initialize(Subject subject, CallbackHandler callbackHandler, Map<String, ?> sharedState, Map<String, ?> options) {
        this.callbackHandler = callbackHandler;
    }

    @Override
    public boolean login() {
        NameCallback nameCallback = new NameCallback("email");
        PasswordCallback passwordCallback = new PasswordCallback("password", false);

        try {
            callbackHandler.handle(new Callback[]{nameCallback, passwordCallback});
            this.email = nameCallback.getName();
            this.password = new String(passwordCallback.getPassword());
        } catch (IOException | UnsupportedCallbackException e) {
            throw new RuntimeException("Error obtaining user credentials", e);
        }

        if (authenticate(email, password)) {
            authenticated = true;
            return true;
        }

        return false;
    }

    @Override
    public boolean commit() {
        return authenticated;
    }

    @Override
    public boolean abort() {
        authenticated = false;
        return false;
    }

    @Override
    public boolean logout() {
        authenticated = false;
        return true;
    }

    private boolean authenticate(String email, String password) {
        User user = userDao.findByEmail(email);
        return user != null && user.getPassword().equals(password);
    }
}
