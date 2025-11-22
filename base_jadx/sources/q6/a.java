package q6;

/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    public final int f13406a = 1024;

    @Override // q6.b
    public final StackTraceElement[] e(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int r12 = this.f13406a;
        if (length <= r12) {
            return stackTraceElementArr;
        }
        int r02 = r12 / 2;
        int r22 = r12 - r02;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[r12];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, r22);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - r02, stackTraceElementArr2, r22, r02);
        return stackTraceElementArr2;
    }
}
