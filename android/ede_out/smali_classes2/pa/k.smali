.class public abstract Lpa/k;
.super Lpa/q;
.source "SourceFile"

# interfaces
.implements Lma/w0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/k$a;
    }
.end annotation


# instance fields
.field public final e:Lcc/t1;

.field public final f:Z

.field public final g:I

.field public final h:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Lcc/c1;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lbc/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbc/i<",
            "Lcc/m0;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lbc/l;


# direct methods
.method public constructor <init>(Lbc/l;Lma/j;Lna/h;Llb/f;Lcc/t1;ZILma/u0;)V
    .locals 2

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p8, :cond_0

    invoke-direct {p0, p2, p3, p4, v0}, Lpa/q;-><init>(Lma/j;Lna/h;Llb/f;Lma/r0;)V

    iput-object p5, p0, Lpa/k;->e:Lcc/t1;

    iput-boolean p6, p0, Lpa/k;->f:Z

    iput p7, p0, Lpa/k;->g:I

    new-instance p2, Lpa/h;

    invoke-direct {p2, p0, p1, p8}, Lpa/h;-><init>(Lpa/k;Lbc/l;Lma/u0;)V

    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lpa/k;->h:Lbc/i;

    new-instance p2, Lpa/j;

    invoke-direct {p2, p0, p4}, Lpa/j;-><init>(Lpa/k;Llb/f;)V

    invoke-interface {p1, p2}, Lbc/l;->d(Lx9/a;)Lbc/c$h;

    move-result-object p2

    iput-object p2, p0, Lpa/k;->j:Lbc/i;

    iput-object p1, p0, Lpa/k;->k:Lbc/l;

    return-void

    :cond_0
    const/4 p1, 0x6

    invoke-static {p1}, Lpa/k;->C(I)V

    throw v1

    :cond_1
    const/4 p1, 0x4

    invoke-static {p1}, Lpa/k;->C(I)V

    throw v1

    :cond_2
    const/4 p1, 0x3

    invoke-static {p1}, Lpa/k;->C(I)V

    throw v1

    :cond_3
    const/4 p1, 0x2

    invoke-static {p1}, Lpa/k;->C(I)V

    throw v1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Lpa/k;->C(I)V

    throw v1

    :cond_5
    const/4 p1, 0x0

    invoke-static {p1}, Lpa/k;->C(I)V

    throw v1
.end method

.method public static synthetic C(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_4
    const-string v5, "bounds"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_5
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_6
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_7
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_8
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_9
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_a
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_b
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_2
    const-string v4, "processBoundsWithoutCycles"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_c
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "getStorageManager"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "getOriginal"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_10
    const-string v3, "getDefaultType"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_11
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_12
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_13
    const-string v3, "getVariance"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_14
    aput-object v4, v2, v1

    :goto_4
    :pswitch_15
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_17
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-boolean v0, p0, Lpa/k;->f:Z

    return v0
.end method

.method public E0(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;)",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public final I()Lcc/t1;
    .locals 1

    iget-object v0, p0, Lpa/k;->e:Lcc/t1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lpa/k;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract K0(Lcc/e0;)V
.end method

.method public abstract L0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation
.end method

.method public final a()Lma/g;
    .locals 0

    return-object p0
.end method

.method public final a()Lma/j;
    .locals 0

    return-object p0
.end method

.method public final a()Lma/w0;
    .locals 0

    return-object p0
.end method

.method public final d0()Lbc/l;
    .locals 1

    iget-object v0, p0, Lpa/k;->k:Lbc/l;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xe

    invoke-static {v0}, Lpa/k;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lpa/k;->g:I

    return v0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcc/e0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpa/k;->i()Lcc/c1;

    move-result-object v0

    check-cast v0, Lpa/k$a;

    invoke-virtual {v0}, Lcc/h;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Lpa/k;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Lcc/c1;
    .locals 1

    iget-object v0, p0, Lpa/k;->h:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/c1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Lpa/k;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final l0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lma/l<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lma/l;->i(Lma/w0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lcc/m0;
    .locals 1

    iget-object v0, p0, Lpa/k;->j:Lbc/i;

    invoke-interface {v0}, Lx9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/m0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lpa/k;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final z0()Lma/m;
    .locals 0

    return-object p0
.end method
