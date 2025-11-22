.class public final Lpa/a0;
.super Lpa/b0;
.source "SourceFile"


# instance fields
.field public final a:Lpa/b0;

.field public final b:Lcc/p1;

.field public c:Lcc/p1;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/util/ArrayList;

.field public f:Lcc/m;


# direct methods
.method public constructor <init>(Lpa/b0;Lcc/p1;)V
    .locals 0

    invoke-direct {p0}, Lpa/b0;-><init>()V

    iput-object p1, p0, Lpa/a0;->a:Lpa/b0;

    iput-object p2, p0, Lpa/a0;->b:Lcc/p1;

    return-void
.end method

.method public static synthetic z0(I)V
    .locals 15

    const/16 v0, 0x17

    const/16 v1, 0xd

    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p0, v7, :cond_0

    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    if-eq p0, v3, :cond_0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v8, "@NotNull method %s.%s must not return null"

    goto :goto_0

    :cond_0
    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_0
    if-eq p0, v7, :cond_1

    if-eq p0, v6, :cond_1

    if-eq p0, v5, :cond_1

    if-eq p0, v4, :cond_1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v9, 0x2

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    :goto_1
    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor"

    const/4 v11, 0x0

    if-eq p0, v7, :cond_5

    if-eq p0, v6, :cond_4

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_5

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_2

    aput-object v10, v9, v11

    goto :goto_2

    :cond_2
    const-string v12, "substitutor"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_3
    const-string v12, "typeSubstitution"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_4
    const-string v12, "kotlinTypeRefiner"

    aput-object v12, v9, v11

    goto :goto_2

    :cond_5
    const-string v12, "typeArguments"

    aput-object v12, v9, v11

    :goto_2
    const-string v11, "substitute"

    const-string v12, "getUnsubstitutedMemberScope"

    const-string v13, "getMemberScope"

    const/4 v14, 0x1

    packed-switch p0, :pswitch_data_0

    const-string v10, "getTypeConstructor"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_0
    const-string v10, "getSealedSubclasses"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_1
    const-string v10, "getDeclaredTypeParameters"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_2
    const-string v10, "getSource"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_3
    const-string v10, "getUnsubstitutedInnerClassesScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_4
    const-string v10, "getVisibility"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_5
    const-string v10, "getModality"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_6
    const-string v10, "getKind"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_7
    aput-object v11, v9, v14

    goto :goto_3

    :pswitch_8
    const-string v10, "getContainingDeclaration"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_9
    const-string v10, "getOriginal"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_a
    const-string v10, "getName"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_b
    const-string v10, "getAnnotations"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_c
    const-string v10, "getConstructors"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_d
    const-string v10, "getContextReceivers"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_e
    const-string v10, "getDefaultType"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_f
    const-string v10, "getStaticScope"

    aput-object v10, v9, v14

    goto :goto_3

    :pswitch_10
    aput-object v12, v9, v14

    goto :goto_3

    :pswitch_11
    aput-object v13, v9, v14

    goto :goto_3

    :pswitch_12
    aput-object v10, v9, v14

    :goto_3
    if-eq p0, v7, :cond_8

    if-eq p0, v6, :cond_8

    if-eq p0, v5, :cond_8

    if-eq p0, v4, :cond_8

    if-eq p0, v3, :cond_8

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    if-eq p0, v0, :cond_6

    goto :goto_4

    :cond_6
    aput-object v11, v9, v7

    goto :goto_4

    :cond_7
    aput-object v12, v9, v7

    goto :goto_4

    :cond_8
    aput-object v13, v9, v7

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_9

    if-eq p0, v6, :cond_9

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_9

    if-eq p0, v3, :cond_9

    if-eq p0, v2, :cond_9

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_12
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final C(Lcc/l1;Ldc/f;)Lvb/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lpa/a0;->a:Lpa/b0;

    invoke-virtual {v1, p1, p2}, Lpa/b0;->C(Lcc/l1;Ldc/f;)Lvb/i;

    move-result-object p1

    iget-object p2, p0, Lpa/a0;->b:Lcc/p1;

    invoke-virtual {p2}, Lcc/p1;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x7

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0

    :cond_1
    new-instance p2, Lvb/n;

    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lvb/n;-><init>(Lvb/i;Lcc/p1;)V

    return-object p2

    :cond_2
    const/4 p1, 0x6

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0

    :cond_3
    const/4 p1, 0x5

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0
.end method

.method public final C0()Lvb/i;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-static {v0}, Lob/i;->d(Lma/j;)Lma/b0;

    move-result-object v0

    invoke-static {v0}, Lsb/b;->i(Lma/b0;)Ldc/f$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpa/a0;->e0(Ldc/f;)Lvb/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final D0()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/z;->D0()Z

    move-result v0

    return v0
.end method

.method public final E()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->E()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1f

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final E0()Lcc/p1;
    .locals 4

    .line 1
    iget-object v0, p0, Lpa/a0;->c:Lcc/p1;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lpa/a0;->b:Lcc/p1;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcc/p1;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Lpa/a0;->c:Lcc/p1;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lpa/a0;->a:Lpa/b0;

    .line 17
    .line 18
    invoke-interface {v1}, Lma/g;->i()Lcc/c1;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lpa/a0;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcc/p1;->g()Lcc/l1;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lpa/a0;->d:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {v1, v0, p0, v2}, La6/a;->B(Ljava/util/List;Lcc/l1;Lma/j;Ljava/util/List;)Lcc/p1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lpa/a0;->c:Lcc/p1;

    .line 48
    .line 49
    iget-object v0, p0, Lpa/a0;->d:Ljava/util/ArrayList;

    .line 50
    .line 51
    const-string v1, "<this>"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v3, v2

    .line 76
    check-cast v3, Lma/w0;

    .line 77
    .line 78
    invoke-interface {v3}, Lma/w0;->l0()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    xor-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_1

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iput-object v1, p0, Lpa/a0;->e:Ljava/util/ArrayList;

    .line 99
    .line 100
    :cond_3
    :goto_1
    iget-object v0, p0, Lpa/a0;->c:Lcc/p1;

    .line 101
    .line 102
    return-object v0
.end method

.method public final F()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->F()Z

    move-result v0

    return v0
.end method

.method public final F0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/o0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x11

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/z;->G()Z

    move-result v0

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/h;->H()Z

    move-result v0

    return v0
.end method

.method public final H0()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->H0()Z

    move-result v0

    return v0
.end method

.method public final J(Lcc/l1;)Lvb/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lob/i;->d(Lma/j;)Lma/b0;

    move-result-object v1

    invoke-static {v1}, Lsb/b;->i(Lma/b0;)Ldc/f$a;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lpa/a0;->C(Lcc/l1;Ldc/f;)Lvb/i;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xb

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0

    :cond_1
    const/16 p1, 0xa

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0
.end method

.method public final J0()Lma/o0;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final M()Lma/d;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->M()Lma/d;

    move-result-object v0

    return-object v0
.end method

.method public final N()Lvb/i;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->N()Lvb/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xf

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final P()Lma/e;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->P()Lma/e;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lma/e;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->a()Lma/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x15

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic a()Lma/g;
    .locals 1

    invoke-virtual {p0}, Lpa/a0;->a()Lma/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a()Lma/j;
    .locals 1

    invoke-virtual {p0}, Lpa/a0;->a()Lma/e;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lma/j;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->b()Lma/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x16

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Lcc/p1;)Lma/k;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcc/p1;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lpa/a0;

    invoke-virtual {p1}, Lcc/p1;->g()Lcc/l1;

    move-result-object p1

    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    move-result-object v1

    invoke-virtual {v1}, Lcc/p1;->g()Lcc/l1;

    move-result-object v1

    invoke-static {p1, v1}, Lcc/p1;->f(Lcc/l1;Lcc/l1;)Lcc/p1;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lpa/a0;-><init>(Lpa/b0;Lcc/p1;)V

    :goto_0
    return-object v0

    :cond_1
    const/16 p1, 0x17

    invoke-static {p1}, Lpa/a0;->z0(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final e0(Ldc/f;)Lvb/i;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lpa/a0;->a:Lpa/b0;

    invoke-virtual {v1, p1}, Lpa/b0;->e0(Ldc/f;)Lvb/i;

    move-result-object p1

    iget-object v1, p0, Lpa/a0;->b:Lcc/p1;

    invoke-virtual {v1}, Lcc/p1;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/16 p1, 0xe

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0

    :cond_1
    new-instance v0, Lvb/n;

    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lvb/n;-><init>(Lvb/i;Lcc/p1;)V

    return-object v0

    :cond_2
    const/16 p1, 0xd

    invoke-static {p1}, Lpa/a0;->z0(I)V

    throw v0
.end method

.method public final getAnnotations()Lna/h;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lna/a;->getAnnotations()Lna/h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x13

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getName()Llb/f;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSource()Lma/r0;
    .locals 1

    sget-object v0, Lma/r0;->a:Lma/r0$a;

    return-object v0
.end method

.method public final getVisibility()Lma/q;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->getVisibility()Lma/q;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1b

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->h()I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x19

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()Lcc/c1;
    .locals 6

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/g;->i()Lcc/c1;

    move-result-object v0

    iget-object v1, p0, Lpa/a0;->b:Lcc/p1;

    invoke-virtual {v1}, Lcc/p1;->h()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lpa/a0;->z0(I)V

    throw v2

    :cond_1
    iget-object v1, p0, Lpa/a0;->f:Lcc/m;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    move-result-object v1

    invoke-interface {v0}, Lcc/c1;->l()Ljava/util/Collection;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcc/e0;

    sget-object v5, Lcc/t1;->c:Lcc/t1;

    invoke-virtual {v1, v4, v5}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcc/m;

    iget-object v1, p0, Lpa/a0;->d:Ljava/util/ArrayList;

    sget-object v4, Lbc/c;->e:Lbc/c$a;

    invoke-direct {v0, p0, v1, v3, v4}, Lcc/m;-><init>(Lma/e;Ljava/util/List;Ljava/util/Collection;Lbc/l;)V

    iput-object v0, p0, Lpa/a0;->f:Lcc/m;

    :cond_3
    iget-object v0, p0, Lpa/a0;->f:Lcc/m;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Lpa/a0;->z0(I)V

    throw v2
.end method

.method public final isExternal()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/z;->isExternal()Z

    move-result v0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->isInline()Z

    move-result v0

    return v0
.end method

.method public final j()Lma/a0;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->j()Lma/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1a

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final k()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->k()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lma/d;

    invoke-interface {v2}, Lma/u;->r()Lma/u$a;

    move-result-object v3

    invoke-interface {v2}, Lma/d;->a()Lma/d;

    move-result-object v4

    invoke-interface {v3, v4}, Lma/u$a;->h(Lma/d;)Lma/u$a;

    move-result-object v3

    invoke-interface {v2}, Lma/z;->j()Lma/a0;

    move-result-object v4

    invoke-interface {v3, v4}, Lma/u$a;->a(Lma/a0;)Lma/u$a;

    move-result-object v3

    invoke-interface {v2}, Lma/z;->getVisibility()Lma/q;

    move-result-object v4

    invoke-interface {v3, v4}, Lma/u$a;->q(Lma/q;)Lma/u$a;

    move-result-object v3

    invoke-interface {v2}, Lma/b;->k0()Lma/b$a;

    move-result-object v2

    invoke-interface {v3, v2}, Lma/u$a;->p(Lma/b$a;)Lma/u$a;

    move-result-object v2

    invoke-interface {v2}, Lma/u$a;->k()Lma/u$a;

    move-result-object v2

    invoke-interface {v2}, Lma/u$a;->build()Lma/u;

    move-result-object v2

    check-cast v2, Lma/d;

    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    move-result-object v3

    invoke-interface {v2, v3}, Lma/d;->c(Lcc/p1;)Lma/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
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

    invoke-interface {p1, p0, p2}, Lma/l;->f(Lma/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lcc/m0;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lpa/a0;->i()Lcc/c1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcc/c1;->getParameters()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcc/q1;->e(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lpa/a0;->getAnnotations()Lna/h;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "annotations"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1}, Lna/h;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    sget-object v1, Lcc/a1;->b:Lcc/a1$a;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcc/a1;->c:Lcc/a1;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object v2, Lcc/a1;->b:Lcc/a1$a;

    .line 37
    .line 38
    new-instance v3, Lcc/k;

    .line 39
    .line 40
    invoke-direct {v3, v1}, Lcc/k;-><init>(Lna/h;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lb8/f;->S(Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcc/a1$a;->c(Ljava/util/List;)Lcc/a1;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_0
    invoke-virtual {p0}, Lpa/a0;->i()Lcc/c1;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p0}, Lpa/a0;->C0()Lvb/i;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-static {v0, v3, v1, v2, v4}, Lcc/f0;->h(Ljava/util/List;Lvb/i;Lcc/a1;Lcc/c1;Z)Lcc/m0;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lma/w0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    iget-object v0, p0, Lpa/a0;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1e

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->u()Z

    move-result v0

    return v0
.end method

.method public final x0()Lvb/i;
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->x0()Lvb/i;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1c

    invoke-static {v0}, Lpa/a0;->z0(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    invoke-interface {v0}, Lma/e;->y()Z

    move-result v0

    return v0
.end method

.method public final y0()Lma/y0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lma/y0<",
            "Lcc/m0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/a0;->a:Lpa/b0;

    .line 2
    .line 3
    invoke-interface {v0}, Lma/e;->y0()Lma/y0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    instance-of v1, v0, Lma/v;

    .line 12
    .line 13
    sget-object v2, Lcc/t1;->c:Lcc/t1;

    .line 14
    .line 15
    iget-object v3, p0, Lpa/a0;->b:Lcc/p1;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    new-instance v1, Lma/v;

    .line 20
    .line 21
    check-cast v0, Lma/v;

    .line 22
    .line 23
    iget-object v4, v0, Lma/v;->b:Lfc/i;

    .line 24
    .line 25
    check-cast v4, Lcc/m0;

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-virtual {v3}, Lcc/p1;->h()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, v4, v2}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v4, v2

    .line 45
    check-cast v4, Lcc/m0;

    .line 46
    .line 47
    :cond_2
    :goto_0
    iget-object v0, v0, Lma/v;->a:Llb/f;

    .line 48
    .line 49
    invoke-direct {v1, v0, v4}, Lma/v;-><init>(Llb/f;Lfc/i;)V

    .line 50
    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_3
    instance-of v1, v0, Lma/c0;

    .line 54
    .line 55
    if-eqz v1, :cond_7

    .line 56
    .line 57
    invoke-virtual {v0}, Lma/y0;->a()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Iterable;

    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Ll9/g;

    .line 87
    .line 88
    iget-object v5, v4, Ll9/g;->a:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v5, Llb/f;

    .line 91
    .line 92
    iget-object v4, v4, Ll9/g;->b:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v4, Lfc/i;

    .line 95
    .line 96
    check-cast v4, Lcc/m0;

    .line 97
    .line 98
    if-eqz v4, :cond_5

    .line 99
    .line 100
    invoke-virtual {v3}, Lcc/p1;->h()Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-eqz v6, :cond_4

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {p0}, Lpa/a0;->E0()Lcc/p1;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v6, v4, v2}, Lcc/p1;->k(Lcc/e0;Lcc/t1;)Lcc/e0;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Lcc/m0;

    .line 116
    .line 117
    :cond_5
    :goto_2
    new-instance v6, Ll9/g;

    .line 118
    .line 119
    invoke-direct {v6, v5, v4}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    new-instance v0, Lma/c0;

    .line 127
    .line 128
    invoke-direct {v0, v1}, Lma/c0;-><init>(Ljava/util/ArrayList;)V

    .line 129
    .line 130
    .line 131
    move-object v1, v0

    .line 132
    :goto_3
    return-object v1

    .line 133
    :cond_7
    new-instance v0, Lj7/p;

    .line 134
    .line 135
    invoke-direct {v0}, Lj7/p;-><init>()V

    .line 136
    .line 137
    .line 138
    throw v0
.end method
