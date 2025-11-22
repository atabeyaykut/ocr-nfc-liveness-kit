package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class MethodCallsLogger {
    private Map<String, Integer> mCalledMethods = new HashMap();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean approveCall(String str, int r6) {
        Integer num = this.mCalledMethods.get(str);
        int r02 = num != null ? num.intValue() : 0;
        boolean z10 = (r02 & r6) != 0;
        this.mCalledMethods.put(str, Integer.valueOf(r6 | r02));
        return !z10;
    }
}
