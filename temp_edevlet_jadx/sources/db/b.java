package db;

import java.util.Map;

/* loaded from: classes2.dex */
public final class b extends kotlin.jvm.internal.j implements x9.l<Integer, h> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f4736a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h[] f4737b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(w wVar, h[] hVarArr) {
        super(1);
        this.f4736a = wVar;
        this.f4737b = hVarArr;
    }

    @Override // x9.l
    public final h invoke(Integer num) {
        Map<Integer, h> map;
        h hVar;
        int r32 = num.intValue();
        w wVar = this.f4736a;
        if (wVar != null && (map = wVar.f4819a) != null && (hVar = map.get(Integer.valueOf(r32))) != null) {
            return hVar;
        }
        if (r32 >= 0) {
            h[] hVarArr = this.f4737b;
            kotlin.jvm.internal.h.f(hVarArr, "<this>");
            if (r32 <= hVarArr.length - 1) {
                return hVarArr[r32];
            }
        }
        return h.f4748e;
    }
}
