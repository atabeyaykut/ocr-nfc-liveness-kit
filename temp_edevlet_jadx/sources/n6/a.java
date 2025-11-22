package n6;

import androidx.browser.browseractions.b;
import j6.a0;
import r2.f;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final k6.a f10593b = new k6.a();

    /* renamed from: c, reason: collision with root package name */
    public static final String f10594c = a("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: d, reason: collision with root package name */
    public static final String f10595d = a("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: e, reason: collision with root package name */
    public static final b f10596e = new b(4);

    /* renamed from: a, reason: collision with root package name */
    public final f<a0> f10597a;

    public a(f fVar) {
        this.f10597a = fVar;
    }

    public static String a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb2 = new StringBuilder(str2.length() + str.length());
        for (int r12 = 0; r12 < str.length(); r12++) {
            sb2.append(str.charAt(r12));
            if (str2.length() > r12) {
                sb2.append(str2.charAt(r12));
            }
        }
        return sb2.toString();
    }
}
