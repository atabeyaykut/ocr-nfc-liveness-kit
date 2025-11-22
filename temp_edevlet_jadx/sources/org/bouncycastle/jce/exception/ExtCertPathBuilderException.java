package org.bouncycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;

/* loaded from: classes2.dex */
public class ExtCertPathBuilderException extends CertPathBuilderException implements ExtException {
    private Throwable cause;

    public ExtCertPathBuilderException(String str, Throwable th2) {
        super(str);
        this.cause = th2;
    }

    public ExtCertPathBuilderException(String str, Throwable th2, CertPath certPath, int r42) {
        super(str, th2);
        this.cause = th2;
    }

    @Override // java.lang.Throwable, org.bouncycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}
