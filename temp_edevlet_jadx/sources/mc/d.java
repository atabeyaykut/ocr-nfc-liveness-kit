package mc;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class d implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Pattern f10370a;

    public d(String str) {
        Pattern patternCompile = Pattern.compile(str);
        kotlin.jvm.internal.h.e(patternCompile, "compile(pattern)");
        this.f10370a = patternCompile;
    }

    public final boolean a(CharSequence input) {
        kotlin.jvm.internal.h.f(input, "input");
        return this.f10370a.matcher(input).matches();
    }

    public final List b(String input) {
        kotlin.jvm.internal.h.f(input, "input");
        int r02 = 0;
        n.V(0);
        Matcher matcher = this.f10370a.matcher(input);
        if (!matcher.find()) {
            return b8.f.S(input.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        do {
            arrayList.add(input.subSequence(r02, matcher.start()).toString());
            r02 = matcher.end();
        } while (matcher.find());
        arrayList.add(input.subSequence(r02, input.length()).toString());
        return arrayList;
    }

    public final String toString() {
        String string = this.f10370a.toString();
        kotlin.jvm.internal.h.e(string, "nativePattern.toString()");
        return string;
    }
}
