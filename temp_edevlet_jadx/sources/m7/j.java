package m7;

import j7.b;
import j7.u;
import j7.v;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class j implements v {

    /* renamed from: a, reason: collision with root package name */
    public final l7.c f10078a;

    /* renamed from: b, reason: collision with root package name */
    public final j7.c f10079b;

    /* renamed from: c, reason: collision with root package name */
    public final l7.f f10080c;

    /* renamed from: d, reason: collision with root package name */
    public final d f10081d;

    /* renamed from: e, reason: collision with root package name */
    public final o7.b f10082e;

    public static final class a<T> extends u<T> {

        /* renamed from: a, reason: collision with root package name */
        public final l7.j<T> f10083a;

        /* renamed from: b, reason: collision with root package name */
        public final Map<String, b> f10084b;

        public a(l7.j jVar, LinkedHashMap linkedHashMap) {
            this.f10083a = jVar;
            this.f10084b = linkedHashMap;
        }

        @Override // j7.u
        public final T a(q7.a aVar) throws IOException {
            if (aVar.B() == 9) {
                aVar.s();
                return null;
            }
            T tH = this.f10083a.h();
            try {
                aVar.b();
                while (aVar.i()) {
                    b bVar = this.f10084b.get(aVar.q());
                    if (bVar == null || !bVar.f10087c) {
                        aVar.P();
                    } else {
                        bVar.a(aVar, tH);
                    }
                }
                aVar.f();
                return tH;
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (IllegalStateException e11) {
                throw new j7.s(e11);
            }
        }

        @Override // j7.u
        public final void b(q7.b bVar, T t10) throws IOException {
            if (t10 == null) {
                bVar.j();
                return;
            }
            bVar.c();
            try {
                for (b bVar2 : this.f10084b.values()) {
                    if (bVar2.c(t10)) {
                        bVar.g(bVar2.f10085a);
                        bVar2.b(bVar, t10);
                    }
                }
                bVar.f();
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public static abstract class b {

        /* renamed from: a, reason: collision with root package name */
        public final String f10085a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f10086b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f10087c;

        public b(String str, boolean z10, boolean z11) {
            this.f10085a = str;
            this.f10086b = z10;
            this.f10087c = z11;
        }

        public abstract void a(q7.a aVar, Object obj) throws IllegalAccessException, IOException;

        public abstract void b(q7.b bVar, Object obj) throws IllegalAccessException, IOException;

        public abstract boolean c(Object obj) throws IllegalAccessException, IOException;
    }

    public j(l7.c cVar, l7.f fVar, d dVar) {
        b.a aVar = j7.b.f8286a;
        this.f10082e = o7.b.f11258a;
        this.f10078a = cVar;
        this.f10079b = aVar;
        this.f10080c = fVar;
        this.f10081d = dVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae A[EDGE_INSN: B:54:0x00ae->B:56:0x00b1 BREAK  A[LOOP:0: B:50:0x009c->B:61:?]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.lang.reflect.Field r10, boolean r11) {
        /*
            r9 = this;
            java.lang.Class r0 = r10.getType()
            l7.f r1 = r9.f10080c
            boolean r2 = r1.c(r0)
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L17
            boolean r0 = r1.d(r0, r11)
            if (r0 == 0) goto L15
            goto L17
        L15:
            r0 = 0
            goto L18
        L17:
            r0 = 1
        L18:
            if (r0 != 0) goto Lb4
            int r0 = r10.getModifiers()
            int r2 = r1.f9411b
            r0 = r0 & r2
            if (r0 == 0) goto L25
            goto Lae
        L25:
            double r5 = r1.f9410a
            r7 = -4616189618054758400(0xbff0000000000000, double:-1.0)
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r0 == 0) goto L45
            java.lang.Class<k7.c> r0 = k7.c.class
            java.lang.annotation.Annotation r0 = r10.getAnnotation(r0)
            k7.c r0 = (k7.c) r0
            java.lang.Class<k7.d> r2 = k7.d.class
            java.lang.annotation.Annotation r2 = r10.getAnnotation(r2)
            k7.d r2 = (k7.d) r2
            boolean r0 = r1.e(r0, r2)
            if (r0 != 0) goto L45
            goto Lae
        L45:
            boolean r0 = r10.isSynthetic()
            if (r0 == 0) goto L4c
            goto Lae
        L4c:
            boolean r0 = r1.f9412c
            if (r0 != 0) goto L6d
            java.lang.Class r0 = r10.getType()
            boolean r2 = r0.isMemberClass()
            if (r2 == 0) goto L69
            int r0 = r0.getModifiers()
            r0 = r0 & 8
            if (r0 == 0) goto L64
            r0 = 1
            goto L65
        L64:
            r0 = 0
        L65:
            if (r0 != 0) goto L69
            r0 = 1
            goto L6a
        L69:
            r0 = 0
        L6a:
            if (r0 == 0) goto L6d
            goto Lae
        L6d:
            java.lang.Class r10 = r10.getType()
            java.lang.Class<java.lang.Enum> r0 = java.lang.Enum.class
            boolean r0 = r0.isAssignableFrom(r10)
            if (r0 != 0) goto L87
            boolean r0 = r10.isAnonymousClass()
            if (r0 != 0) goto L85
            boolean r10 = r10.isLocalClass()
            if (r10 == 0) goto L87
        L85:
            r10 = 1
            goto L88
        L87:
            r10 = 0
        L88:
            if (r10 == 0) goto L8b
            goto Lae
        L8b:
            if (r11 == 0) goto L90
            java.util.List<j7.a> r10 = r1.f9413d
            goto L92
        L90:
            java.util.List<j7.a> r10 = r1.f9414e
        L92:
            boolean r11 = r10.isEmpty()
            if (r11 != 0) goto Lb0
            java.util.Iterator r10 = r10.iterator()
        L9c:
            boolean r11 = r10.hasNext()
            if (r11 == 0) goto Lb0
            java.lang.Object r11 = r10.next()
            j7.a r11 = (j7.a) r11
            boolean r11 = r11.b()
            if (r11 == 0) goto L9c
        Lae:
            r10 = 1
            goto Lb1
        Lb0:
            r10 = 0
        Lb1:
            if (r10 != 0) goto Lb4
            r3 = 1
        Lb4:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: m7.j.a(java.lang.reflect.Field, boolean):boolean");
    }

    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:43)
        */
    @Override // j7.v
    public final <T> j7.u<T> b(
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r34v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:405)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:186)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        	at java.base/java.util.stream.ReferencePipeline$7$1FlatMap.end(ReferencePipeline.java:284)
        	at java.base/java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:571)
        	at java.base/java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:560)
        	at java.base/java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:153)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:176)
        	at java.base/java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:265)
        	at java.base/java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:632)
        	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:297)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:286)
        	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:270)
        	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:161)
        	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:103)
        	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:45)
        	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:34)
        	at jadx.core.codegen.CodeGen.generate(CodeGen.java:22)
        	at jadx.core.ProcessClass.process(ProcessClass.java:79)
        	at jadx.core.ProcessClass.generateCode(ProcessClass.java:117)
        	at jadx.core.dex.nodes.ClassNode.generateClassCode(ClassNode.java:403)
        	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:391)
        	at jadx.core.dex.nodes.ClassNode.getCode(ClassNode.java:341)
        */
    /*  JADX ERROR: NullPointerException in pass: ConstructorVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.RegisterArg.sameRegAndSVar(jadx.core.dex.instructions.args.InsnArg)" because "resultArg" is null
        	at jadx.core.dex.visitors.MoveInlineVisitor.processMove(MoveInlineVisitor.java:52)
        	at jadx.core.dex.visitors.MoveInlineVisitor.moveInline(MoveInlineVisitor.java:41)
        */
}
