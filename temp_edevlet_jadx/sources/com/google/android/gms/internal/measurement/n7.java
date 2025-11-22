package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class n7 {
    public static final void a(Object obj, Object obj2) {
        m7 m7Var = (m7) obj;
        if (m7Var.isEmpty()) {
            return;
        }
        Iterator it = m7Var.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
    }

    public static final m7 b(Object obj, Object obj2) {
        m7 m7VarC = (m7) obj;
        m7 m7Var = (m7) obj2;
        if (!m7Var.isEmpty()) {
            if (!m7VarC.f3630a) {
                m7VarC = m7VarC.c();
            }
            m7VarC.e();
            if (!m7Var.isEmpty()) {
                m7VarC.putAll(m7Var);
            }
        }
        return m7VarC;
    }
}
