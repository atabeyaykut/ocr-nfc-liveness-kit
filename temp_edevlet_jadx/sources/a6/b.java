package a6;

import c5.u;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f120a = new HashSet(Arrays.asList("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"));

    /* renamed from: b, reason: collision with root package name */
    public static final List<String> f121b = Arrays.asList("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c, reason: collision with root package name */
    public static final List<String> f122c = Arrays.asList("auto", "app", "am");

    /* renamed from: d, reason: collision with root package name */
    public static final List<String> f123d = Arrays.asList("_r", "_dbg");

    /* renamed from: e, reason: collision with root package name */
    public static final List<String> f124e;
    public static final List<String> f;

    static {
        String[][] strArr = {u.f2014b, u.f2015c};
        int length = 0;
        for (int r22 = 0; r22 < 2; r22++) {
            length += strArr[r22].length;
        }
        Object[] objArrCopyOf = Arrays.copyOf(strArr[0], length);
        int length2 = strArr[0].length;
        String[] strArr2 = strArr[1];
        System.arraycopy(strArr2, 0, objArrCopyOf, length2, strArr2.length);
        f124e = Arrays.asList((String[]) objArrCopyOf);
        f = Arrays.asList("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");
    }
}
