.class public final Lpa/s0;
.super Lpa/x;
.source "SourceFile"

# interfaces
.implements Lpa/r0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/s0$a;
    }
.end annotation


# static fields
.field public static final M:Lpa/s0$a;

.field public static final synthetic N:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final H:Lbc/l;

.field public final I:Lma/v0;

.field public final K:Lbc/j;

.field public L:Lma/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lpa/s0;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lpa/s0;->N:[Lda/m;

    new-instance v0, Lpa/s0$a;

    invoke-direct {v0}, Lpa/s0$a;-><init>()V

    sput-object v0, Lpa/s0;->M:Lpa/s0$a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lbc/l;Lma/v0;Lma/d;Lpa/r0;Lna/h;Lma/b$a;Lma/r0;)V
    .locals 7

    sget-object v6, Llb/h;->e:Llb/f;

    move-object v0, p0

    move-object v1, p6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p7

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lpa/x;-><init>(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)V

    iput-object p1, p0, Lpa/s0;->H:Lbc/l;

    iput-object p2, p0, Lpa/s0;->I:Lma/v0;

    invoke-interface {p2}, Lma/z;->D0()Z

    move-result p2

    .line 1
    iput-boolean p2, p0, Lpa/x;->v:Z

    .line 2
    new-instance p2, Lpa/s0$b;

    invoke-direct {p2, p0, p3}, Lpa/s0$b;-><init>(Lpa/s0;Lma/d;)V

    invoke-interface {p1, p2}, Lbc/l;->f(Lx9/a;)Lbc/c$f;

    move-result-object p1

    iput-object p1, p0, Lpa/s0;->K:Lbc/j;

    iput-object p3, p0, Lpa/s0;->L:Lma/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic E0(Lma/j;Lma/a0;Lma/o;)Lma/u;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lpa/s0;->T0(Lma/j;Lma/a0;Lma/o;)Lpa/r0;

    move-result-object p1

    return-object p1
.end method

.method public final K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 8

    .line 1
    const-string p3, "newOwner"

    .line 2
    .line 3
    invoke-static {p2, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "kind"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "annotations"

    .line 12
    .line 13
    invoke-static {p5, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v6, Lma/b$a;->a:Lma/b$a;

    .line 17
    .line 18
    new-instance p1, Lpa/s0;

    .line 19
    .line 20
    iget-object v1, p0, Lpa/s0;->H:Lbc/l;

    .line 21
    .line 22
    iget-object v2, p0, Lpa/s0;->I:Lma/v0;

    .line 23
    .line 24
    iget-object v3, p0, Lpa/s0;->L:Lma/d;

    .line 25
    .line 26
    move-object v0, p1

    .line 27
    move-object v4, p0

    .line 28
    move-object v5, p5

    .line 29
    move-object v7, p4

    .line 30
    invoke-direct/range {v0 .. v7}, Lpa/s0;-><init>(Lbc/l;Lma/v0;Lma/d;Lpa/r0;Lna/h;Lma/b$a;Lma/r0;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method public final T0(Lma/j;Lma/a0;Lma/o;)Lpa/r0;
    .locals 2

    .line 1
    sget-object v0, Lma/b$a;->b:Lma/b$a;

    .line 2
    .line 3
    const-string v1, "newOwner"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "visibility"

    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lpa/x;->r()Lma/u$a;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lpa/x$a;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lpa/x$a;->b(Lma/j;)Lma/u$a;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Lpa/x$a;->a(Lma/a0;)Lma/u$a;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p3}, Lpa/x$a;->q(Lma/q;)Lma/u$a;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lpa/x$a;->p(Lma/b$a;)Lma/u$a;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, v1, Lpa/x$a;->m:Z

    .line 33
    .line 34
    invoke-virtual {v1}, Lpa/x$a;->build()Lma/u;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lpa/r0;

    .line 44
    .line 45
    return-object p1
.end method

.method public final U0()Lpa/r0;
    .locals 2

    invoke-super {p0}, Lpa/x;->a()Lma/u;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lpa/r0;

    return-object v0
.end method

.method public final V0(Lcc/p1;)Lpa/s0;
    .locals 2

    .line 1
    const-string v0, "substitutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lpa/x;->c(Lcc/p1;)Lma/u;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lpa/s0;

    .line 16
    .line 17
    iget-object v0, p1, Lpa/x;->g:Lcc/e0;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcc/p1;->d(Lcc/e0;)Lcc/p1;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lpa/s0;->L:Lma/d;

    .line 27
    .line 28
    invoke-interface {v1}, Lma/d;->a()Lma/d;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1, v0}, Lma/d;->c(Lcc/p1;)Lma/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return-object p1

    .line 40
    :cond_0
    iput-object v0, p1, Lpa/s0;->L:Lma/d;

    .line 41
    .line 42
    return-object p1
.end method

.method public final bridge synthetic a()Lma/a;
    .locals 1

    invoke-virtual {p0}, Lpa/s0;->U0()Lpa/r0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/b;
    .locals 1

    invoke-virtual {p0}, Lpa/s0;->U0()Lpa/r0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lpa/s0;->U0()Lpa/r0;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/u;
    .locals 1

    invoke-virtual {p0}, Lpa/s0;->U0()Lpa/r0;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lma/h;
    .locals 1

    iget-object v0, p0, Lpa/s0;->I:Lma/v0;

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 1

    iget-object v0, p0, Lpa/s0;->I:Lma/v0;

    return-object v0
.end method

.method public final bridge synthetic b0(Lma/j;Lma/a0;Lma/o;)Lma/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lpa/s0;->T0(Lma/j;Lma/a0;Lma/o;)Lpa/r0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Lcc/p1;)Lma/i;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic c(Lcc/p1;)Lma/k;
    .locals 0

    invoke-virtual {p0, p1}, Lpa/s0;->V0(Lcc/p1;)Lpa/s0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c(Lcc/p1;)Lma/u;
    .locals 0

    invoke-virtual {p0, p1}, Lpa/s0;->V0(Lcc/p1;)Lpa/s0;

    move-result-object p1

    return-object p1
.end method

.method public final getReturnType()Lcc/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lpa/x;->g:Lcc/e0;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final m0()Lma/d;
    .locals 1

    iget-object v0, p0, Lpa/s0;->L:Lma/d;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lpa/s0;->L:Lma/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lma/i;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final x()Lma/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lpa/s0;->L:Lma/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lma/i;->x()Lma/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "underlyingConstructorDescriptor.constructedClass"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final bridge synthetic z0()Lma/m;
    .locals 1

    invoke-virtual {p0}, Lpa/s0;->U0()Lpa/r0;

    move-result-object v0

    return-object v0
.end method
