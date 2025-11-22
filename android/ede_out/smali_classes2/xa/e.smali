.class public final Lxa/e;
.super Lpa/p0;
.source "SourceFile"

# interfaces
.implements Lxa/a;


# static fields
.field public static final K:Lxa/e$a;

.field public static final L:Lxa/e$b;


# instance fields
.field public H:I

.field public final I:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxa/e$a;

    invoke-direct {v0}, Lxa/e$a;-><init>()V

    sput-object v0, Lxa/e;->K:Lxa/e$a;

    new-instance v0, Lxa/e$b;

    invoke-direct {v0}, Lxa/e$b;-><init>()V

    sput-object v0, Lxa/e;->L:Lxa/e$b;

    return-void
.end method

.method public constructor <init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    invoke-direct/range {p0 .. p6}, Lpa/p0;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;)V

    iput v0, p0, Lxa/e;->H:I

    iput-boolean p7, p0, Lxa/e;->I:Z

    return-void

    :cond_0
    const/4 p1, 0x4

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v1

    :cond_1
    const/4 p1, 0x3

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v1

    :cond_2
    const/4 p1, 0x2

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v1

    :cond_3
    const/4 p1, 0x1

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v1

    :cond_4
    invoke-static {v0}, Lxa/e;->C(I)V

    throw v1
.end method

.method public static synthetic C(I)V
    .locals 11

    const/16 v0, 0x15

    const/16 v1, 0x12

    const/16 v2, 0xd

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v4, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v8, "containingDeclaration"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "enhancedReturnType"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "enhancedValueParameterTypes"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "newOwner"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_5
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_6
    const-string v8, "unsubstitutedValueParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_7
    const-string v8, "typeParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_8
    const-string v8, "contextReceiverParameters"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_9
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_a
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_b
    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_c
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "enhance"

    const-string v8, "createSubstitutedCopy"

    const-string v9, "initialize"

    const/4 v10, 0x1

    if-eq p0, v2, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v10

    goto :goto_3

    :cond_2
    aput-object v7, v5, v10

    goto :goto_3

    :cond_3
    aput-object v8, v5, v10

    goto :goto_3

    :cond_4
    aput-object v9, v5, v10

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v6, "<init>"

    aput-object v6, v5, v4

    goto :goto_4

    :pswitch_d
    aput-object v7, v5, v4

    goto :goto_4

    :pswitch_e
    aput-object v8, v5, v4

    goto :goto_4

    :pswitch_f
    aput-object v9, v5, v4

    goto :goto_4

    :pswitch_10
    const-string v6, "createJavaMethod"

    aput-object v6, v5, v4

    :goto_4
    :pswitch_11
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public static Y0(Lma/j;Lya/e;Llb/f;Lbb/a;Z)Lxa/e;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Lxa/e;

    const/4 v3, 0x0

    sget-object v6, Lma/b$a;->a:Lma/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lxa/e;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;Z)V

    return-object v0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p0}, Lxa/e;->C(I)V

    throw v0

    :cond_1
    const/4 p0, 0x7

    invoke-static {p0}, Lxa/e;->C(I)V

    throw v0

    :cond_2
    const/4 p0, 0x5

    invoke-static {p0}, Lxa/e;->C(I)V

    throw v0
.end method


# virtual methods
.method public final B()Z
    .locals 1

    iget v0, p0, Lxa/e;->H:I

    invoke-static {v0}, Landroidx/fragment/app/a;->b(I)Z

    move-result v0

    return v0
.end method

.method public final K0(Lma/b$a;Lma/j;Lma/u;Lma/r0;Lna/h;Llb/f;)Lpa/x;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p5, :cond_1

    .line 7
    .line 8
    new-instance v0, Lxa/e;

    .line 9
    .line 10
    move-object v3, p3

    .line 11
    check-cast v3, Lma/q0;

    .line 12
    .line 13
    if-eqz p6, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    .line 17
    .line 18
    .line 19
    move-result-object p6

    .line 20
    :goto_0
    move-object v5, p6

    .line 21
    iget-boolean v8, p0, Lxa/e;->I:Z

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p2

    .line 25
    move-object v4, p5

    .line 26
    move-object v6, p1

    .line 27
    move-object v7, p4

    .line 28
    invoke-direct/range {v1 .. v8}, Lxa/e;-><init>(Lma/j;Lma/q0;Lna/h;Llb/f;Lma/b$a;Lma/r0;Z)V

    .line 29
    .line 30
    .line 31
    iget p1, p0, Lxa/e;->H:I

    .line 32
    .line 33
    invoke-static {p1}, Landroidx/fragment/app/a;->a(I)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    invoke-static {p1}, Landroidx/fragment/app/a;->b(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v0, p2, p1}, Lxa/e;->Z0(ZZ)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    const/16 p1, 0x10

    .line 46
    .line 47
    invoke-static {p1}, Lxa/e;->C(I)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :cond_2
    const/16 p1, 0xf

    .line 52
    .line 53
    invoke-static {p1}, Lxa/e;->C(I)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_3
    const/16 p1, 0xe

    .line 58
    .line 59
    invoke-static {p1}, Lxa/e;->C(I)V

    .line 60
    .line 61
    .line 62
    throw v0
.end method

.method public final X0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;Ljava/util/Map;)Lpa/p0;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    if-eqz p4, :cond_a

    if-eqz p5, :cond_9

    if-eqz p8, :cond_8

    invoke-super/range {p0 .. p9}, Lpa/p0;->X0(Lpa/o0;Lma/o0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcc/e0;Lma/a0;Lma/q;Ljava/util/Map;)Lpa/p0;

    sget-object p1, Lic/s;->a:Lic/s;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object p1, Lic/s;->b:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lic/k;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p3, 0x0

    .line 3
    iget-object p4, p2, Lic/k;->a:Llb/f;

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    move-result-object p5

    invoke-static {p5, p4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p4, p2, Lic/k;->b:Lmc/d;

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    move-result-object p5

    invoke-virtual {p5}, Llb/f;->o()Ljava/lang/String;

    move-result-object p5

    const-string p6, "functionDescriptor.name.asString()"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Lmc/d;->a(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p4, p2, Lic/k;->c:Ljava/util/Collection;

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lpa/p;->getName()Llb/f;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    :goto_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    const/4 p4, 0x1

    :goto_1
    if-eqz p4, :cond_0

    .line 4
    iget-object p1, p2, Lic/k;->e:[Lic/f;

    array-length p4, p1

    :goto_2
    if-ge p3, p4, :cond_5

    aget-object p5, p1, p3

    invoke-interface {p5, p0}, Lic/f;->a(Lma/u;)Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_4

    new-instance p1, Lic/g$b;

    invoke-direct {p1, p5}, Lic/g$b;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p2, Lic/k;->d:Lx9/l;

    invoke-interface {p1, p0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    new-instance p2, Lic/g$b;

    invoke-direct {p2, p1}, Lic/g$b;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_3

    :cond_6
    sget-object p1, Lic/g$c;->b:Lic/g$c;

    goto :goto_3

    .line 5
    :cond_7
    sget-object p1, Lic/g$a;->b:Lic/g$a;

    .line 6
    :goto_3
    iget-boolean p1, p1, Lic/g;->a:Z

    iput-boolean p1, p0, Lpa/x;->n:Z

    return-object p0

    :cond_8
    const/16 p1, 0xc

    .line 7
    invoke-static {p1}, Lxa/e;->C(I)V

    throw v0

    :cond_9
    const/16 p1, 0xb

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v0

    :cond_a
    const/16 p1, 0xa

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v0

    :cond_b
    const/16 p1, 0x9

    invoke-static {p1}, Lxa/e;->C(I)V

    throw v0
.end method

.method public final Z0(ZZ)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lxa/e;->H:I

    return-void
.end method

.method public final i0(Lcc/e0;Ljava/util/ArrayList;Lcc/e0;Ll9/g;)Lxa/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpa/x;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, v0, p0}, Lcom/google/android/gms/internal/clearcut/d0;->m(Ljava/util/ArrayList;Ljava/util/Collection;Lma/a;)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    move-object p1, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lna/h$a;->a:Lna/h$a$a;

    .line 15
    .line 16
    invoke-static {p0, p1, v1}, Lob/h;->h(Lma/a;Lcc/e0;Lna/h;)Lpa/o0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-virtual {p0}, Lpa/p0;->r()Lma/u$a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lpa/x$a;

    .line 25
    .line 26
    iput-object p2, v1, Lpa/x$a;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {v1, p3}, Lpa/x$a;->n(Lcc/e0;)Lma/u$a;

    .line 29
    .line 30
    .line 31
    iput-object p1, v1, Lpa/x$a;->i:Lma/o0;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, v1, Lpa/x$a;->p:Z

    .line 35
    .line 36
    iput-boolean p1, v1, Lpa/x$a;->o:Z

    .line 37
    .line 38
    invoke-virtual {v1}, Lpa/x$a;->build()Lma/u;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lxa/e;

    .line 43
    .line 44
    if-eqz p4, :cond_1

    .line 45
    .line 46
    iget-object p2, p4, Ll9/g;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p2, Lma/a$a;

    .line 49
    .line 50
    iget-object p3, p4, Ll9/g;->b:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {p1, p2, p3}, Lpa/x;->P0(Lma/a$a;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-eqz p1, :cond_2

    .line 56
    .line 57
    return-object p1

    .line 58
    :cond_2
    const/16 p1, 0x15

    .line 59
    .line 60
    invoke-static {p1}, Lxa/e;->C(I)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
