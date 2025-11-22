package kd;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: c, reason: collision with root package name */
    public static final p f8916c = new p();

    /* renamed from: a, reason: collision with root package name */
    public ArrayList<a> f8917a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public a f8918b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public Date f8919a;
    }

    static {
        new SimpleDateFormat("HH:mm:ss.SSS");
    }

    public p() {
        Date date = new Date();
        if (this.f8918b != null) {
            date = new Date(this.f8918b.f8919a.getTime() + 0);
            this.f8918b.getClass();
        }
        a aVar = new a();
        this.f8918b = aVar;
        aVar.f8919a = date;
        this.f8917a.add(aVar);
    }
}
