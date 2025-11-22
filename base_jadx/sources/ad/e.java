package ad;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Logger;
import m9.e0;
import rc.v;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArraySet<Logger> f253a = new CopyOnWriteArraySet<>();

    /* renamed from: b, reason: collision with root package name */
    public static final Map<String, String> f254b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r22 = v.class.getPackage();
        String name = r22 != null ? r22.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        linkedHashMap.put(v.class.getName(), "okhttp.OkHttpClient");
        linkedHashMap.put(yc.e.class.getName(), "okhttp.Http2");
        linkedHashMap.put(uc.d.class.getName(), "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        f254b = e0.T0(linkedHashMap);
    }
}
