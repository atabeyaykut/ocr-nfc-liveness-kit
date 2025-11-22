.class public abstract Lga/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/internal/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lga/s$a;
    }
.end annotation


# static fields
.field public static final a:Lmc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmc/d;

    const-string v1, "<v#(\\d+)>"

    invoke-direct {v0, v1}, Lmc/d;-><init>(Ljava/lang/String;)V

    sput-object v0, Lga/s;->a:Lmc/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 7

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    aput-object p0, p2, v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lga/s;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, p1, p2, p3, p4}, Lga/s;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const-string v1, "interfaces"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p0, v2

    const-string v4, "superInterface"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1, p2, p3, p4}, Lga/s;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    if-eqz p4, :cond_4

    invoke-static {v3}, Lsa/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "$DefaultImpls"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lx5/a;->t(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_4

    aput-object v3, p2, v0

    invoke-static {v4, p1, p2, p3}, Lga/s;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    :try_start_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v0, "declaredMethods"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method


# virtual methods
.method public final k(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0, p1}, Lga/s;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "TYPE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-class p1, Lkotlin/jvm/internal/d;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-class p1, Ljava/lang/Object;

    :goto_1
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "desc"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "<init>"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    invoke-virtual {p0, p2}, Lga/s;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v3, v2, [Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, [Ljava/lang/Class;

    .line 33
    .line 34
    const/4 v3, 0x6

    .line 35
    const/16 v4, 0x29

    .line 36
    .line 37
    invoke-static {p2, v4, v2, v2, v3}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p0, v3, v4, p2}, Lga/s;->v(IILjava/lang/String;)Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0}, Lga/s;->r()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3, p1, v0, p2, v2}, Lga/s;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_1
    invoke-virtual {p0}, Lga/s;->r()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    const-class v3, Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v3, p1, v0, p2, v2}, Lga/s;->u(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_2
    return-object v1
.end method

.method public abstract n()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lma/i;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o(Llb/f;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            ")",
            "Ljava/util/Collection<",
            "Lma/u;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p(I)Lma/l0;
.end method

.method public final q(Lvb/i;I)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/i;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "Lga/h<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "belonginess"

    .line 7
    .line 8
    invoke-static {p2, v0}, Landroidx/camera/core/impl/utils/f;->j(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lga/w;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lga/w;-><init>(Lga/s;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-static {p1, v1, v2}, Lvb/l$a;->a(Lvb/l;Lvb/d;I)Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_5

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lma/j;

    .line 44
    .line 45
    instance-of v4, v3, Lma/b;

    .line 46
    .line 47
    if-eqz v4, :cond_4

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    check-cast v4, Lma/b;

    .line 51
    .line 52
    invoke-interface {v4}, Lma/z;->getVisibility()Lma/q;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    sget-object v6, Lma/p;->h:Lma/p$k;

    .line 57
    .line 58
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_4

    .line 63
    .line 64
    invoke-interface {v4}, Lma/b;->k0()Lma/b$a;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    sget-object v5, Lma/b$a;->b:Lma/b$a;

    .line 72
    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x1

    .line 75
    if-eq v4, v5, :cond_1

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const/4 v4, 0x0

    .line 80
    :goto_1
    if-ne p2, v7, :cond_2

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/4 v5, 0x0

    .line 85
    :goto_2
    if-ne v4, v5, :cond_3

    .line 86
    .line 87
    const/4 v6, 0x1

    .line 88
    :cond_3
    if-eqz v6, :cond_4

    .line 89
    .line 90
    sget-object v4, Ll9/m;->a:Ll9/m;

    .line 91
    .line 92
    invoke-interface {v3, v0, v4}, Lma/j;->o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lga/h;

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    move-object v3, v1

    .line 100
    :goto_3
    if-eqz v3, :cond_0

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    invoke-static {v2}, Lm9/t;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/util/Collection;

    .line 111
    .line 112
    return-object p1
.end method

.method public r()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lsa/d;->a:Ljava/util/List;

    .line 6
    .line 7
    const-string v1, "<this>"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lsa/d;->c:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Class;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    return-object v0
.end method

.method public abstract s(Llb/f;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llb/f;",
            ")",
            "Ljava/util/Collection<",
            "Lma/l0;",
            ">;"
        }
    .end annotation
.end method

.method public final t(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_3

    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "VZCBSIFJD"

    invoke-static {v5, v4}, Lmc/n;->H(Ljava/lang/CharSequence;C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/16 v3, 0x4c

    if-ne v4, v3, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x3b

    invoke-static {p1, v5, v2, v3, v4}, Lmc/n;->M(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    add-int/2addr v3, v1

    :goto_2
    invoke-virtual {p0, v2, v3, p1}, Lga/s;->v(IILjava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_2
    new-instance v0, Ll9/f;

    const-string v2, "Unknown type prefix in the method signature: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    return-object v0
.end method

.method public final v(IILjava/lang/String;)Ljava/lang/Class;
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x4c

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lkotlin/jvm/internal/b;->g()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lsa/d;->d(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    add-int/2addr p1, v2

    .line 19
    sub-int/2addr p2, v2

    .line 20
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/16 p2, 0x2f

    .line 30
    .line 31
    const/16 p3, 0x2e

    .line 32
    .line 33
    invoke-static {p1, p2, p3}, Lmc/j;->B(Ljava/lang/String;CC)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "jClass.safeClassLoader.l\u2026d - 1).replace(\'/\', \'.\'))"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/16 v1, 0x5b

    .line 45
    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    add-int/2addr p1, v2

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lga/s;->v(IILjava/lang/String;)Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object p2, Lga/z0;->a:Llb/c;

    .line 54
    .line 55
    const-string p2, "<this>"

    .line 56
    .line 57
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/16 p1, 0x56

    .line 71
    .line 72
    if-ne v0, p1, :cond_2

    .line 73
    .line 74
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    const-string p2, "TYPE"

    .line 77
    .line 78
    :goto_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/16 p1, 0x5a

    .line 83
    .line 84
    if-ne v0, p1, :cond_3

    .line 85
    .line 86
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const/16 p1, 0x43

    .line 90
    .line 91
    if-ne v0, p1, :cond_4

    .line 92
    .line 93
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    const/16 p1, 0x42

    .line 97
    .line 98
    if-ne v0, p1, :cond_5

    .line 99
    .line 100
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    const/16 p1, 0x53

    .line 104
    .line 105
    if-ne v0, p1, :cond_6

    .line 106
    .line 107
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    const/16 p1, 0x49

    .line 111
    .line 112
    if-ne v0, p1, :cond_7

    .line 113
    .line 114
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_7
    const/16 p1, 0x46

    .line 118
    .line 119
    if-ne v0, p1, :cond_8

    .line 120
    .line 121
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_8
    const/16 p1, 0x4a

    .line 125
    .line 126
    if-ne v0, p1, :cond_9

    .line 127
    .line 128
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_9
    const/16 p1, 0x44

    .line 132
    .line 133
    if-ne v0, p1, :cond_a

    .line 134
    .line 135
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 136
    .line 137
    :goto_1
    return-object p1

    .line 138
    :cond_a
    new-instance p1, Ll9/f;

    .line 139
    .line 140
    const-string p2, "Unknown type prefix in the method signature: "

    .line 141
    .line 142
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-direct {p1, p2, v2}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 147
    .line 148
    .line 149
    throw p1
.end method
