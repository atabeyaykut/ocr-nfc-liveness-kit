package androidx.constraintlayout.core.parser;

import androidx.browser.browseractions.a;
import androidx.core.os.EnvironmentCompat;

/* loaded from: classes.dex */
public class CLParsingException extends Exception {
    private final String mElementClass;
    private final int mLineNumber;
    private final String mReason;

    public CLParsingException(String str, CLElement cLElement) {
        int line;
        this.mReason = str;
        if (cLElement != null) {
            this.mElementClass = cLElement.getStrClass();
            line = cLElement.getLine();
        } else {
            this.mElementClass = EnvironmentCompat.MEDIA_UNKNOWN;
            line = 0;
        }
        this.mLineNumber = line;
    }

    public String reason() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.mReason);
        sb2.append(" (");
        sb2.append(this.mElementClass);
        sb2.append(" at line ");
        return a.b(sb2, this.mLineNumber, ")");
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "CLParsingException (" + hashCode() + ") : " + reason();
    }
}
