package x0;

import android.util.Log;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class r extends Exception {
    public static final StackTraceElement[] f = new StackTraceElement[0];

    /* renamed from: a, reason: collision with root package name */
    public final List<Throwable> f19080a;

    /* renamed from: b, reason: collision with root package name */
    public v0.f f19081b;

    /* renamed from: c, reason: collision with root package name */
    public v0.a f19082c;

    /* renamed from: d, reason: collision with root package name */
    public Class<?> f19083d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19084e;

    public static final class a implements Appendable {

        /* renamed from: a, reason: collision with root package name */
        public final Appendable f19085a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f19086b = true;

        public a(Appendable appendable) {
            this.f19085a = appendable;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c10) throws IOException {
            boolean z10 = this.f19086b;
            Appendable appendable = this.f19085a;
            if (z10) {
                this.f19086b = false;
                appendable.append("  ");
            }
            this.f19086b = c10 == '\n';
            appendable.append(c10);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(@Nullable CharSequence charSequence) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(@Nullable CharSequence charSequence, int r6, int r72) throws IOException {
            if (charSequence == null) {
                charSequence = "";
            }
            boolean z10 = this.f19086b;
            Appendable appendable = this.f19085a;
            boolean z11 = false;
            if (z10) {
                this.f19086b = false;
                appendable.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(r72 - 1) == '\n') {
                z11 = true;
            }
            this.f19086b = z11;
            appendable.append(charSequence, r6, r72);
            return this;
        }
    }

    public r(String str) {
        this(str, Collections.emptyList());
    }

    public r(String str, List<Throwable> list) {
        this.f19084e = str;
        setStackTrace(f);
        this.f19080a = list;
    }

    public static void a(Throwable th2, ArrayList arrayList) {
        if (!(th2 instanceof r)) {
            arrayList.add(th2);
            return;
        }
        Iterator<Throwable> it = ((r) th2).f19080a.iterator();
        while (it.hasNext()) {
            a(it.next(), arrayList);
        }
    }

    public static void b(List list, a aVar) {
        try {
            c(list, aVar);
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static void c(List list, a aVar) throws IOException {
        int size = list.size();
        int r12 = 0;
        while (r12 < size) {
            aVar.append("Cause (");
            int r22 = r12 + 1;
            aVar.append(String.valueOf(r22));
            aVar.append(" of ");
            aVar.append(String.valueOf(size));
            aVar.append("): ");
            Throwable th2 = (Throwable) list.get(r12);
            if (th2 instanceof r) {
                ((r) th2).f(aVar);
            } else {
                d(th2, aVar);
            }
            r12 = r22;
        }
    }

    public static void d(Throwable th2, Appendable appendable) throws IOException {
        try {
            appendable.append(th2.getClass().toString()).append(": ").append(th2.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th2);
        }
    }

    public final void e() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int r22 = 0;
        while (r22 < size) {
            StringBuilder sb2 = new StringBuilder("Root cause (");
            int r42 = r22 + 1;
            sb2.append(r42);
            sb2.append(" of ");
            sb2.append(size);
            sb2.append(")");
            Log.i("Glide", sb2.toString(), (Throwable) arrayList.get(r22));
            r22 = r42;
        }
    }

    public final void f(Appendable appendable) throws IOException {
        d(this, appendable);
        b(this.f19080a, new a(appendable));
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2;
        String str3;
        StringBuilder sb2 = new StringBuilder(71);
        sb2.append(this.f19084e);
        String str4 = "";
        if (this.f19083d != null) {
            str = ", " + this.f19083d;
        } else {
            str = "";
        }
        sb2.append(str);
        if (this.f19082c != null) {
            str2 = ", " + this.f19082c;
        } else {
            str2 = "";
        }
        sb2.append(str2);
        if (this.f19081b != null) {
            str4 = ", " + this.f19081b;
        }
        sb2.append(str4);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb2.toString();
        }
        if (arrayList.size() == 1) {
            str3 = "\nThere was 1 root cause:";
        } else {
            sb2.append("\nThere were ");
            sb2.append(arrayList.size());
            str3 = " root causes:";
        }
        sb2.append(str3);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Throwable th2 = (Throwable) it.next();
            sb2.append('\n');
            sb2.append(th2.getClass().getName());
            sb2.append('(');
            sb2.append(th2.getMessage());
            sb2.append(')');
        }
        sb2.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb2.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() throws IOException {
        f(System.err);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) throws IOException {
        f(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) throws IOException {
        f(printWriter);
    }
}
