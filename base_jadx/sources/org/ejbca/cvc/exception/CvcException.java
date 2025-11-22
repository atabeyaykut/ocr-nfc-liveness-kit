package org.ejbca.cvc.exception;

/* loaded from: classes2.dex */
public class CvcException extends Exception {
    private static final long serialVersionUID = 1;

    public CvcException() {
    }

    public CvcException(String str) {
        super(str);
    }

    public CvcException(String str, Throwable th2) {
        super(str, th2);
    }

    public CvcException(Throwable th2) {
        super(th2);
    }
}
