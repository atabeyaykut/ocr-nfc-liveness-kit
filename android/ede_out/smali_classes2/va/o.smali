.class public final Lva/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lva/o$a;

.field public static final b:Lva/o$b;

.field public static final c:Lva/o$c;

.field public static final d:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lva/o$a;

    .line 2
    .line 3
    sget-object v1, Lqa/a;->c:Lqa/a;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lva/o$a;-><init>(Lqa/a;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lva/o;->a:Lva/o$a;

    .line 9
    .line 10
    new-instance v1, Lva/o$b;

    .line 11
    .line 12
    sget-object v2, Lqa/c;->c:Lqa/c;

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lva/o$b;-><init>(Lqa/c;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lva/o;->b:Lva/o$b;

    .line 18
    .line 19
    new-instance v2, Lva/o$c;

    .line 20
    .line 21
    sget-object v3, Lqa/b;->c:Lqa/b;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lva/o$c;-><init>(Lqa/b;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lva/o;->c:Lva/o$c;

    .line 27
    .line 28
    new-instance v3, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lva/o;->d:Ljava/util/HashMap;

    .line 34
    .line 35
    iget-object v4, v0, Lma/o;->a:Lma/e1;

    .line 36
    .line 37
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v0, v1, Lma/o;->a:Lma/e1;

    .line 41
    .line 42
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v0, v2, Lma/o;->a:Lma/e1;

    .line 46
    .line 47
    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static synthetic a(I)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "what"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "second"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "first"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "from"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "toDescriptorVisibility"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v8

    goto :goto_3

    :cond_2
    aput-object v7, v5, v8

    :goto_3
    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v3, "isVisibleForProtectedAndPackage"

    aput-object v3, v5, v4

    goto :goto_4

    :cond_3
    aput-object v7, v5, v4

    goto :goto_4

    :cond_4
    const-string v3, "areInSamePackage"

    aput-object v3, v5, v4

    :cond_5
    :goto_4
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lma/p$b;Lma/n;Lma/j;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lob/i;->v(Lma/n;)Lma/n;

    move-result-object v1

    invoke-static {v1, p2}, Lva/o;->c(Lma/j;Lma/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lma/p;->c:Lma/p$f;

    invoke-virtual {v0, p0, p1, p2}, Lma/p$f;->c(Lma/p$b;Lma/n;Lma/j;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lva/o;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Lma/j;Lma/j;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-class v0, Lma/e0;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lob/i;->i(Lma/j;Ljava/lang/Class;Z)Lma/j;

    move-result-object p0

    check-cast p0, Lma/e0;

    invoke-static {p1, v0, v1}, Lob/i;->i(Lma/j;Ljava/lang/Class;Z)Lma/j;

    move-result-object p1

    check-cast p1, Lma/e0;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lma/e0;->d()Llb/c;

    move-result-object p0

    invoke-interface {p1}, Lma/e0;->d()Llb/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Llb/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Lva/o;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Lva/o;->a(I)V

    throw v0
.end method
