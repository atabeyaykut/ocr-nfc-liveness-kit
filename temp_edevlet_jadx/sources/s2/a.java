package s2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b8.f;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import u2.l;

/* loaded from: classes.dex */
public final class a implements l {

    /* renamed from: c, reason: collision with root package name */
    public static final String f14853c;

    /* renamed from: d, reason: collision with root package name */
    public static final Set<r2.b> f14854d;

    /* renamed from: e, reason: collision with root package name */
    public static final a f14855e;
    public static final a f;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final String f14856a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final String f14857b;

    static {
        String strX = f.X("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f14853c = strX;
        String strX2 = f.X("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String strX3 = f.X("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f14854d = Collections.unmodifiableSet(new HashSet(Arrays.asList(new r2.b("proto"), new r2.b("json"))));
        f14855e = new a(strX, null);
        f = new a(strX2, strX3);
    }

    public a(@NonNull String str, @Nullable String str2) {
        this.f14856a = str;
        this.f14857b = str2;
    }

    @NonNull
    public static a a(@NonNull byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new a(str2, str3);
    }

    @Nullable
    public final byte[] b() {
        String str = this.f14856a;
        String str2 = this.f14857b;
        if (str2 == null && str == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = str;
        objArr[2] = "\\";
        if (str2 == null) {
            str2 = "";
        }
        objArr[3] = str2;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }
}
