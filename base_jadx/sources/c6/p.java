package c6;

import com.airbnb.epoxy.c0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class p extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final List<d<?>> f2218a;

    public p(ArrayList arrayList) {
        super("Dependency cycle detected: " + Arrays.toString(arrayList.toArray()));
        this.f2218a = arrayList;
    }
}
