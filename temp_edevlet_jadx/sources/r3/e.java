package r3;

import android.accounts.Account;
import androidx.annotation.NonNull;
import androidx.collection.ArraySet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Account f13944a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f13945b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f13946c;

    /* renamed from: d, reason: collision with root package name */
    public final Map f13947d;

    /* renamed from: e, reason: collision with root package name */
    public final String f13948e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final e5.a f13949g;

    /* renamed from: h, reason: collision with root package name */
    public Integer f13950h;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public Account f13951a;

        /* renamed from: b, reason: collision with root package name */
        public ArraySet f13952b;

        /* renamed from: c, reason: collision with root package name */
        public String f13953c;

        /* renamed from: d, reason: collision with root package name */
        public String f13954d;
    }

    public e(Account account, @NonNull ArraySet arraySet, @NonNull String str, @NonNull String str2) {
        e5.a aVar = e5.a.f5107a;
        this.f13944a = account;
        Set setEmptySet = arraySet == null ? Collections.emptySet() : Collections.unmodifiableSet(arraySet);
        this.f13945b = setEmptySet;
        Map mapEmptyMap = Collections.emptyMap();
        this.f13947d = mapEmptyMap;
        this.f13948e = str;
        this.f = str2;
        this.f13949g = aVar;
        HashSet hashSet = new HashSet(setEmptySet);
        Iterator it = mapEmptyMap.values().iterator();
        while (it.hasNext()) {
            ((z) it.next()).getClass();
            hashSet.addAll(null);
        }
        this.f13946c = Collections.unmodifiableSet(hashSet);
    }
}
