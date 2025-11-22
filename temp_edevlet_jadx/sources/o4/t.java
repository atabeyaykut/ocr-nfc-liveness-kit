package o4;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final String f11231a;

    /* renamed from: b, reason: collision with root package name */
    public final s f11232b;

    /* renamed from: c, reason: collision with root package name */
    public s f11233c;

    public /* synthetic */ t() {
        s sVar = new s();
        this.f11232b = sVar;
        this.f11233c = sVar;
        this.f11231a = "RemoteModel";
    }

    public final void a(String str) {
        s sVar = new s();
        this.f11233c.f11230c = sVar;
        this.f11233c = sVar;
        sVar.f11229b = null;
        sVar.f11228a = str;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append(this.f11231a);
        sb2.append('{');
        s sVar = this.f11232b.f11230c;
        String str = "";
        while (sVar != null) {
            Object obj = sVar.f11229b;
            sb2.append(str);
            String str2 = sVar.f11228a;
            if (str2 != null) {
                sb2.append(str2);
                sb2.append('=');
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb2.append(obj);
            } else {
                sb2.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            sVar = sVar.f11230c;
            str = ", ";
        }
        sb2.append('}');
        return sb2.toString();
    }
}
