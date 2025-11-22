package org.ejbca.cvc.exception;

/* loaded from: classes2.dex */
public class ParseException extends CvcException {
    private static final long serialVersionUID = 1;

    public ParseException() {
    }

    public ParseException(String str) {
        super(str);
    }

    public ParseException(String str, Throwable th2) {
        super(str, th2);
    }

    public ParseException(Throwable th2) {
        super(th2);
    }
}
