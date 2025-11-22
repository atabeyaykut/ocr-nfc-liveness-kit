package hb;

import ca.c;
import ca.d;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import m9.b0;
import m9.n;

/* loaded from: classes2.dex */
public final class a extends ib.a {
    public static final a f = new a(1, 0, 7);

    /* renamed from: hb.a$a, reason: collision with other inner class name */
    public static final class C0122a {
        public static a a(InputStream inputStream) {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            d dVar = new d(1, dataInputStream.readInt());
            ArrayList arrayList = new ArrayList(n.Q0(dVar));
            Iterator<Integer> it = dVar.iterator();
            while (((c) it).f2251c) {
                ((b0) it).nextInt();
                arrayList.add(Integer.valueOf(dataInputStream.readInt()));
            }
            int size = arrayList.size();
            int[] r02 = new int[size];
            Iterator it2 = arrayList.iterator();
            int r22 = 0;
            while (it2.hasNext()) {
                r02[r22] = ((Number) it2.next()).intValue();
                r22++;
            }
            return new a(Arrays.copyOf(r02, size));
        }
    }

    static {
        new a(new int[0]);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(int... numbers) {
        super(Arrays.copyOf(numbers, numbers.length));
        h.f(numbers, "numbers");
    }
}
