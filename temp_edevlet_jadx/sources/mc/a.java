package mc;

import java.nio.charset.Charset;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f10357a;

    static {
        Charset charsetForName = Charset.forName("UTF-8");
        kotlin.jvm.internal.h.e(charsetForName, "forName(\"UTF-8\")");
        f10357a = charsetForName;
        kotlin.jvm.internal.h.e(Charset.forName("UTF-16"), "forName(\"UTF-16\")");
        kotlin.jvm.internal.h.e(Charset.forName("UTF-16BE"), "forName(\"UTF-16BE\")");
        kotlin.jvm.internal.h.e(Charset.forName("UTF-16LE"), "forName(\"UTF-16LE\")");
        kotlin.jvm.internal.h.e(Charset.forName("US-ASCII"), "forName(\"US-ASCII\")");
        kotlin.jvm.internal.h.e(Charset.forName(LocalizedMessage.DEFAULT_ENCODING), "forName(\"ISO-8859-1\")");
    }
}
