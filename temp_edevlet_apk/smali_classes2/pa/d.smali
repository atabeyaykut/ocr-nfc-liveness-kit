.class public abstract Lpa/d;
.super Lpa/p;
.source "SourceFile"

# interfaces
.implements Lma/o0;


# direct methods
.method public constructor <init>(Lna/h;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Llb/h;->d:Llb/f;

    invoke-direct {p0, p1, v0}, Lpa/p;-><init>(Lna/h;Llb/f;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lpa/d;->C(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public static synthetic C(I)V
    .locals 6

    packed-switch p0, :pswitch_data_0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_0
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    const/4 v2, 0x3

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractReceiverParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_2

    :pswitch_2
    aput-object v3, v2, v4

    goto :goto_2

    :pswitch_3
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    :goto_2
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_3

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_4
    const-string v3, "getSource"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_5
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_6
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_7
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_8
    const-string v3, "getValueParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_9
    const-string v3, "getType"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_a
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_3

    :pswitch_b
    const-string v3, "getContextReceiverParameters"

    aput-object v3, v2, v4

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_c
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_d
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public final B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a()Lma/a;
    .locals 0

    return-object p0
.end method

.method public final a()Lma/j;
    .locals 0

    return-object p0
.end method

.method public final a0()Lma/o0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic c(Lcc/p1;)Lma/k;
    .locals 0

    invoke-virtual {p0, p1}, Lpa/d;->c(Lcc/p1;)Lpa/d;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcc/p1;)Lpa/d;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcc/p1;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lma/z0;->b()Lma/j;

    move-result-object v1

    instance-of v1, v1, Lma/e;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lpa/d;->getType()Lcc/e0;

    move-result-object v1

    sget-object v2, Lcc/t1;->e:Lcc/t1;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpa/d;->getType()Lcc/e0;

    move-result-object v1

    sget-object v2, Lcc/t1;->c:Lcc/t1;

    :goto_0
    invoke-virtual {p1, v1, v2}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lpa/d;->getType()Lcc/e0;

    move-result-object v0

    if-ne p1, v0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Lpa/o0;

    invoke-interface {p0}, Lma/z0;->b()Lma/j;

    move-result-object v1

    new-instance v2, Lwb/j;

    invoke-direct {v2, p1}, Lwb/j;-><init>(Lcc/e0;)V

    invoke-virtual {p0}, Lna/b;->getAnnotations()Lna/h;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lpa/o0;-><init>(Lma/j;Lwb/a;Lna/h;)V

    return-object v0

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Lpa/d;->C(I)V

    throw v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lma/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0}, Lpa/d;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/a1;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lpa/d;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReturnType()Lcc/e0;
    .locals 1

    invoke-virtual {p0}, Lpa/d;->getType()Lcc/e0;

    move-result-object v0

    return-object v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    return-object v0
.end method

.method public final getType()Lcc/e0;
    .locals 1

    invoke-interface {p0}, Lma/o0;->getValue()Lwb/g;

    move-result-object v0

    invoke-interface {v0}, Lwb/g;->getType()Lcc/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lpa/d;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Lpa/d;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getVisibility()Lma/q;
    .locals 1

    sget-object v0, Lma/p;->f:Lma/p$i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Lpa/d;->C(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h0()Lma/o0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    invoke-interface {p1, p0, p2}, Lma/l;->g(Lma/o0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
