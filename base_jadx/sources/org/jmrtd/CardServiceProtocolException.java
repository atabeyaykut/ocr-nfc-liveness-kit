package org.jmrtd;

import androidx.browser.browseractions.a;
import net.sf.scuba.smartcards.CardServiceException;

/* loaded from: classes2.dex */
public class CardServiceProtocolException extends CardServiceException {
    private static final long serialVersionUID = 8527846223511524125L;
    private int step;

    public CardServiceProtocolException(String str, int r22) {
        super(str);
        this.step = r22;
    }

    public CardServiceProtocolException(String str, int r22, int r32) {
        super(str, r32);
        this.step = r22;
    }

    public CardServiceProtocolException(String str, int r22, Throwable th2) {
        super(str, th2);
        this.step = r22;
    }

    public CardServiceProtocolException(String str, int r22, Throwable th2, int r42) {
        super(str, th2, r42);
        this.step = r22;
    }

    @Override // net.sf.scuba.smartcards.CardServiceException, java.lang.Throwable
    public String getMessage() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.getMessage());
        sb2.append(" (step: ");
        return a.b(sb2, this.step, ")");
    }

    public int getStep() {
        return this.step;
    }
}
