package c3;

import androidx.annotation.WorkerThread;

@WorkerThread
/* loaded from: classes.dex */
public interface b {

    public interface a<T> {
        T execute();
    }

    <T> T a(a<T> aVar);
}
