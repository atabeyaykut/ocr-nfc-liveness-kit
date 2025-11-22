package c5;

import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import java.net.URL;
import java.util.Map;

@WorkerThread
/* loaded from: classes.dex */
public final class i3 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final URL f1623a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f1624b;

    /* renamed from: c, reason: collision with root package name */
    public final g3 f1625c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1626d;

    /* renamed from: e, reason: collision with root package name */
    public final Map<String, String> f1627e;
    public final /* synthetic */ j3 f;

    public i3(j3 j3Var, String str, URL url, byte[] bArr, ArrayMap arrayMap, g3 g3Var) {
        this.f = j3Var;
        r3.r.f(str);
        this.f1623a = url;
        this.f1624b = bArr;
        this.f1625c = g3Var;
        this.f1626d = str;
        this.f1627e = arrayMap;
    }

    /* JADX WARN: Not initialized variable reg: 13, insn: 0x00f9: MOVE (r10 I:??[OBJECT, ARRAY]) = (r13 I:??[OBJECT, ARRAY]) (LINE:250), block:B:41:0x00f8 */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x011d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0158 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.i3.run():void");
    }
}
