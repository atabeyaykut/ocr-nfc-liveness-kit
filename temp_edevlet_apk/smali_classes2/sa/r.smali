.class public final Lsa/r;
.super Lsa/v;
.source "SourceFile"

# interfaces
.implements Lcb/d;
.implements Lcb/r;
.implements Lcb/g;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lsa/v;-><init>()V

    iput-object p1, p0, Lsa/r;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "klass.declaredFields"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lm9/k;->n0([Ljava/lang/Object;)Llc/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lsa/l;->a:Lsa/l;

    .line 17
    .line 18
    invoke-static {v0, v1}, Llc/w;->W0(Llc/h;Lx9/l;)Llc/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lsa/m;->a:Lsa/m;

    .line 23
    .line 24
    invoke-static {v0, v1}, Llc/w;->Z0(Llc/h;Lx9/l;)Llc/y;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Collection;

    .line 37
    .line 38
    return-object v0
.end method

.method public final B()Z
    .locals 10

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    iget-object v1, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lsa/b;->a:Lsa/b$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-class v0, Ljava/lang/Class;

    .line 15
    .line 16
    :try_start_0
    new-instance v4, Lsa/b$a;

    .line 17
    .line 18
    const-string v5, "isSealed"

    .line 19
    .line 20
    new-array v6, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "getPermittedSubclasses"

    .line 27
    .line 28
    new-array v7, v3, [Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "isRecord"

    .line 35
    .line 36
    new-array v8, v3, [Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string v8, "getRecordComponents"

    .line 43
    .line 44
    new-array v9, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v4, v5, v6, v7, v0}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object v0, v4

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    new-instance v0, Lsa/b$a;

    .line 56
    .line 57
    invoke-direct {v0, v2, v2, v2, v2}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sput-object v0, Lsa/b;->a:Lsa/b$a;

    .line 61
    .line 62
    :cond_0
    iget-object v0, v0, Lsa/b$a;->a:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v2, v0

    .line 79
    check-cast v2, Ljava/lang/Boolean;

    .line 80
    .line 81
    :goto_1
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :cond_2
    return v3
.end method

.method public final E()Z
    .locals 1

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final G()V
    .locals 0

    return-void
.end method

.method public final I()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "klass.declaredClasses"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lm9/k;->n0([Ljava/lang/Object;)Llc/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lsa/n;->a:Lsa/n;

    .line 17
    .line 18
    invoke-static {v0, v1}, Llc/w;->W0(Llc/h;Lx9/l;)Llc/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lsa/o;->a:Lsa/o;

    .line 23
    .line 24
    invoke-static {v0, v1}, Llc/w;->a1(Llc/h;Lx9/l;)Llc/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Collection;

    .line 37
    .line 38
    return-object v0
.end method

.method public final L()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "klass.declaredMethods"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lm9/k;->n0([Ljava/lang/Object;)Llc/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lsa/p;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lsa/p;-><init>(Lsa/r;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Llc/w;->V0(Llc/h;Lx9/l;)Llc/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lsa/q;->a:Lsa/q;

    .line 26
    .line 27
    invoke-static {v0, v1}, Llc/w;->Z0(Llc/h;Lx9/l;)Llc/y;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/Collection;

    .line 40
    .line 41
    return-object v0
.end method

.method public final M()Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcb/j;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    iget-object v1, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lsa/b;->a:Lsa/b$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-class v0, Ljava/lang/Class;

    .line 15
    .line 16
    :try_start_0
    new-instance v4, Lsa/b$a;

    .line 17
    .line 18
    const-string v5, "isSealed"

    .line 19
    .line 20
    new-array v6, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "getPermittedSubclasses"

    .line 27
    .line 28
    new-array v7, v3, [Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "isRecord"

    .line 35
    .line 36
    new-array v8, v3, [Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string v8, "getRecordComponents"

    .line 43
    .line 44
    new-array v9, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v4, v5, v6, v7, v0}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object v0, v4

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    new-instance v0, Lsa/b$a;

    .line 56
    .line 57
    invoke-direct {v0, v2, v2, v2, v2}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sput-object v0, Lsa/b;->a:Lsa/b$a;

    .line 61
    .line 62
    :cond_0
    iget-object v0, v0, Lsa/b$a;->b:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "null cannot be cast to non-null type kotlin.Array<java.lang.Class<*>>"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v2, v0

    .line 79
    check-cast v2, [Ljava/lang/Class;

    .line 80
    .line 81
    :goto_1
    if-eqz v2, :cond_2

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    array-length v1, v2

    .line 86
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    array-length v1, v2

    .line 90
    :goto_2
    if-ge v3, v1, :cond_3

    .line 91
    .line 92
    aget-object v4, v2, v3

    .line 93
    .line 94
    new-instance v5, Lsa/t;

    .line 95
    .line 96
    invoke-direct {v5, v4}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_2
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 106
    .line 107
    :cond_3
    return-object v0
.end method

.method public final d()Llb/c;
    .locals 2

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-static {v0}, Lsa/d;->a(Ljava/lang/Class;)Llb/b;

    move-result-object v0

    invoke-virtual {v0}, Llb/b;->b()Llb/c;

    move-result-object v0

    const-string v1, "klass.classId.asSingleFqName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lsa/r;

    if-eqz v0, :cond_0

    check-cast p1, Lsa/r;

    iget-object p1, p1, Lsa/r;->a:Ljava/lang/Class;

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Lb8/f;->G([Ljava/lang/annotation/Annotation;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lm9/v;->a:Lm9/v;

    .line 17
    .line 18
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    return-object v0
.end method

.method public final getName()Llb/f;
    .locals 1

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameters()Ljava/util/ArrayList;
    .locals 6

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const-string v1, "klass.typeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lsa/f0;

    invoke-direct {v5, v4}, Lsa/f0;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getVisibility()Lma/e1;
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    sget-object v0, Lma/d1$h;->c:Lma/d1$h;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v0, Lma/d1$e;->c:Lma/d1$e;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Lqa/c;->c:Lqa/c;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v0, Lqa/b;->c:Lqa/b;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lqa/a;->c:Lqa/a;

    .line 44
    .line 45
    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAbstract()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final isFinal()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final k()Ljava/util/Collection;
    .locals 2

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "klass.declaredConstructors"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lm9/k;->n0([Ljava/lang/Object;)Llc/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lsa/j;->a:Lsa/j;

    .line 17
    .line 18
    invoke-static {v0, v1}, Llc/w;->W0(Llc/h;Lx9/l;)Llc/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lsa/k;->a:Lsa/k;

    .line 23
    .line 24
    invoke-static {v0, v1}, Llc/w;->Z0(Llc/h;Lx9/l;)Llc/y;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Llc/w;->c1(Llc/h;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lb8/f;->Z(Ljava/util/List;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/util/Collection;

    .line 37
    .line 38
    return-object v0
.end method

.method public final l()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcb/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lm9/v;->a:Lm9/v;

    return-object v0

    :cond_0
    new-instance v2, Lc5/b4;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lc5/b4;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Lc5/b4;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "klass.genericInterfaces"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lc5/b4;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lc5/b4;->e()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-virtual {v2, v0}, Lc5/b4;->f([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lb8/f;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lm9/n;->Q0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    new-instance v3, Lsa/t;

    invoke-direct {v3, v2}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public final m()Ljava/util/ArrayList;
    .locals 10

    .line 1
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "clazz"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lsa/b;->a:Lsa/b$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-class v1, Ljava/lang/Class;

    .line 15
    .line 16
    :try_start_0
    new-instance v4, Lsa/b$a;

    .line 17
    .line 18
    const-string v5, "isSealed"

    .line 19
    .line 20
    new-array v6, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "getPermittedSubclasses"

    .line 27
    .line 28
    new-array v7, v3, [Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "isRecord"

    .line 35
    .line 36
    new-array v8, v3, [Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string v8, "getRecordComponents"

    .line 43
    .line 44
    new-array v9, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v4, v5, v6, v7, v1}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object v1, v4

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    new-instance v1, Lsa/b$a;

    .line 56
    .line 57
    invoke-direct {v1, v2, v2, v2, v2}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sput-object v1, Lsa/b;->a:Lsa/b$a;

    .line 61
    .line 62
    :cond_0
    iget-object v1, v1, Lsa/b$a;->d:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    if-nez v1, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v2, v0

    .line 74
    check-cast v2, [Ljava/lang/Object;

    .line 75
    .line 76
    :goto_1
    if-nez v2, :cond_2

    .line 77
    .line 78
    new-array v2, v3, [Ljava/lang/Object;

    .line 79
    .line 80
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    array-length v1, v2

    .line 83
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .line 85
    .line 86
    array-length v1, v2

    .line 87
    :goto_2
    if-ge v3, v1, :cond_3

    .line 88
    .line 89
    aget-object v4, v2, v3

    .line 90
    .line 91
    new-instance v5, Lsa/d0;

    .line 92
    .line 93
    invoke-direct {v5, v4}, Lsa/d0;-><init>(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    return-object v0
.end method

.method public final n(Llb/c;)Lcb/a;
    .locals 1

    .line 1
    const-string v0, "fqName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, p1}, Lb8/f;->E([Ljava/lang/annotation/Annotation;Llb/c;)Lsa/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return-object p1
.end method

.method public final o()V
    .locals 0

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public final q()Lsa/r;
    .locals 2

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lsa/r;

    invoke-direct {v1, v0}, Lsa/r;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final r()Z
    .locals 10

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    iget-object v1, p0, Lsa/r;->a:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lsa/b;->a:Lsa/b$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-class v0, Ljava/lang/Class;

    .line 15
    .line 16
    :try_start_0
    new-instance v4, Lsa/b$a;

    .line 17
    .line 18
    const-string v5, "isSealed"

    .line 19
    .line 20
    new-array v6, v3, [Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const-string v6, "getPermittedSubclasses"

    .line 27
    .line 28
    new-array v7, v3, [Ljava/lang/Class;

    .line 29
    .line 30
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "isRecord"

    .line 35
    .line 36
    new-array v8, v3, [Ljava/lang/Class;

    .line 37
    .line 38
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    const-string v8, "getRecordComponents"

    .line 43
    .line 44
    new-array v9, v3, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {v4, v5, v6, v7, v0}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    move-object v0, v4

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    new-instance v0, Lsa/b$a;

    .line 56
    .line 57
    invoke-direct {v0, v2, v2, v2, v2}, Lsa/b$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    sput-object v0, Lsa/b;->a:Lsa/b$a;

    .line 61
    .line 62
    :cond_0
    iget-object v0, v0, Lsa/b$a;->c:Ljava/lang/reflect/Method;

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "null cannot be cast to non-null type kotlin.Boolean"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v2, v0

    .line 79
    check-cast v2, Ljava/lang/Boolean;

    .line 80
    .line 81
    :goto_1
    if-eqz v2, :cond_2

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    :cond_2
    return v3
.end method

.method public final t()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lsa/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lsa/r;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method
