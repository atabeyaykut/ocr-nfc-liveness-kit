package d8;

import java.util.Comparator;
import java.util.Map;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ c f4700a = new c();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((Integer) ((Map.Entry) obj).getValue()).compareTo((Integer) ((Map.Entry) obj2).getValue());
    }
}
