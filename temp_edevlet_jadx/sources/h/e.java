package h;

import ed.h0;
import ed.m;
import java.io.EOFException;
import java.io.IOException;
import x9.l;

/* loaded from: classes.dex */
public final class e extends m {

    /* renamed from: b, reason: collision with root package name */
    public final l<IOException, l9.m> f6771b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6772c;

    public e(h0 h0Var, d dVar) {
        super(h0Var);
        this.f6771b = dVar;
    }

    @Override // ed.m, ed.h0
    public final void M(ed.e eVar, long j10) throws EOFException {
        if (this.f6772c) {
            eVar.skip(j10);
            return;
        }
        try {
            super.M(eVar, j10);
        } catch (IOException e10) {
            this.f6772c = true;
            this.f6771b.invoke(e10);
        }
    }

    @Override // ed.m, ed.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            super.close();
        } catch (IOException e10) {
            this.f6772c = true;
            this.f6771b.invoke(e10);
        }
    }

    @Override // ed.m, ed.h0, java.io.Flushable
    public final void flush() {
        try {
            super.flush();
        } catch (IOException e10) {
            this.f6772c = true;
            this.f6771b.invoke(e10);
        }
    }
}
