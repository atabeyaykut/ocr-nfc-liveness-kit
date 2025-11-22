package com.google.android.gms.internal.measurement;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class u7 {
    public static final void a(StringBuilder sb2, int r72, String str, Object obj) throws SecurityException {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                a(sb2, r72, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                a(sb2, r72, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        int r02 = 0;
        for (int r12 = 0; r12 < r72; r12++) {
            sb2.append(' ');
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            u5 u5Var = v5.f3791b;
            sb2.append(c5.w.L(new u5(((String) obj).getBytes(x6.f3835a))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof v5) {
            sb2.append(": \"");
            sb2.append(c5.w.L((v5) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof q6) {
            sb2.append(" {");
            c((q6) obj, sb2, r72 + 2);
            sb2.append("\n");
            while (r02 < r72) {
                sb2.append(' ');
                r02++;
            }
            sb2.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj.toString());
            return;
        }
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int r82 = r72 + 2;
        a(sb2, r82, "key", entry.getKey());
        a(sb2, r82, "value", entry.getValue());
        sb2.append("\n");
        while (r02 < r72) {
            sb2.append(' ');
            r02++;
        }
        sb2.append("}");
    }

    public static final String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int r12 = 0; r12 < str.length(); r12++) {
            char cCharAt = str.charAt(r12);
            if (Character.isUpperCase(cCharAt)) {
                sb2.append("_");
            }
            sb2.append(Character.toLowerCase(cCharAt));
        }
        return sb2.toString();
    }

    public static void c(s7 s7Var, StringBuilder sb2, int r14) throws SecurityException {
        Object obj;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        TreeSet treeSet = new TreeSet();
        for (Method method : s7Var.getClass().getDeclaredMethods()) {
            map2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                map.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        Iterator it = treeSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String strSubstring = str.startsWith("get") ? str.substring(3) : str;
            if (strSubstring.endsWith("List") && !strSubstring.endsWith("OrBuilderList") && !strSubstring.equals("List")) {
                String strValueOf = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf2 = String.valueOf(strSubstring.substring(1, strSubstring.length() - 4));
                String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                Method method2 = (Method) map.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    a(sb2, r14, b(strConcat), q6.k(s7Var, method2, new Object[0]));
                }
            }
            if (strSubstring.endsWith("Map") && !strSubstring.equals("Map")) {
                String strValueOf3 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf4 = String.valueOf(strSubstring.substring(1, strSubstring.length() - 3));
                String strConcat2 = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
                Method method3 = (Method) map.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    a(sb2, r14, b(strConcat2), q6.k(s7Var, method3, new Object[0]));
                }
            }
            if (((Method) map2.get(strSubstring.length() != 0 ? "set".concat(strSubstring) : new String("set"))) != null) {
                if (strSubstring.endsWith("Bytes")) {
                    String strValueOf5 = String.valueOf(strSubstring.substring(0, strSubstring.length() - 5));
                    if (!map.containsKey(strValueOf5.length() != 0 ? "get".concat(strValueOf5) : new String("get"))) {
                    }
                }
                String strValueOf6 = String.valueOf(strSubstring.substring(0, 1).toLowerCase());
                String strValueOf7 = String.valueOf(strSubstring.substring(1));
                String strConcat3 = strValueOf7.length() != 0 ? strValueOf6.concat(strValueOf7) : new String(strValueOf6);
                Method method4 = (Method) map.get(strSubstring.length() != 0 ? "get".concat(strSubstring) : new String("get"));
                Method method5 = (Method) map.get(strSubstring.length() != 0 ? "has".concat(strSubstring) : new String("has"));
                if (method4 != null) {
                    Object objK = q6.k(s7Var, method4, new Object[0]);
                    if (method5 == null) {
                        if (objK instanceof Boolean) {
                            if (((Boolean) objK).booleanValue()) {
                                a(sb2, r14, b(strConcat3), objK);
                            }
                        } else if (objK instanceof Integer) {
                            if (((Integer) objK).intValue() != 0) {
                                a(sb2, r14, b(strConcat3), objK);
                            }
                        } else if (objK instanceof Float) {
                            if (Float.floatToRawIntBits(((Float) objK).floatValue()) != 0) {
                                a(sb2, r14, b(strConcat3), objK);
                            }
                        } else if (!(objK instanceof Double)) {
                            if (objK instanceof String) {
                                obj = "";
                            } else if (objK instanceof v5) {
                                obj = v5.f3791b;
                            } else if (objK instanceof s7) {
                                if (objK != ((s7) objK).d()) {
                                    a(sb2, r14, b(strConcat3), objK);
                                }
                            } else if (!(objK instanceof Enum) || ((Enum) objK).ordinal() != 0) {
                                a(sb2, r14, b(strConcat3), objK);
                            }
                            if (!objK.equals(obj)) {
                                a(sb2, r14, b(strConcat3), objK);
                            }
                        } else if (Double.doubleToRawLongBits(((Double) objK).doubleValue()) != 0) {
                            a(sb2, r14, b(strConcat3), objK);
                        }
                    } else if (((Boolean) q6.k(s7Var, method5, new Object[0])).booleanValue()) {
                        a(sb2, r14, b(strConcat3), objK);
                    }
                }
            }
        }
        if (s7Var instanceof o6) {
            throw null;
        }
        p8 p8Var = ((q6) s7Var).zzc;
        if (p8Var != null) {
            for (int r52 = 0; r52 < p8Var.f3675a; r52++) {
                a(sb2, r14, String.valueOf(p8Var.f3676b[r52] >>> 3), p8Var.f3677c[r52]);
            }
        }
    }
}
