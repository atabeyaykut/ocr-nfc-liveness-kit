package c5;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class f3 {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final String f1536a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final String f1537b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1538c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final Bundle f1539d;

    public f3(long j10, @Nullable Bundle bundle, @NonNull String str, @NonNull String str2) {
        this.f1536a = str;
        this.f1537b = str2;
        this.f1539d = bundle;
        this.f1538c = j10;
    }

    public static f3 b(s sVar) {
        String str = sVar.f1956a;
        String str2 = sVar.f1958c;
        return new f3(sVar.f1959d, sVar.f1957b.E(), str, str2);
    }

    public final s a() {
        return new s(this.f1536a, new q(new Bundle(this.f1539d)), this.f1537b, this.f1538c);
    }

    public final String toString() {
        String string = this.f1539d.toString();
        String str = this.f1537b;
        int length = String.valueOf(str).length();
        String str2 = this.f1536a;
        StringBuilder sb2 = new StringBuilder(string.length() + length + 21 + String.valueOf(str2).length());
        sb2.append("origin=");
        sb2.append(str);
        sb2.append(",name=");
        sb2.append(str2);
        return androidx.camera.camera2.internal.c.h(sb2, ",params=", string);
    }
}
