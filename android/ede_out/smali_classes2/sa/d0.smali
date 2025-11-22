.class public final Lsa/d0;
.super Lsa/z;
.source "SourceFile"

# interfaces
.implements Lcb/v;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "recordComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lsa/z;-><init>()V

    iput-object p1, p0, Lsa/d0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final O()Ljava/lang/reflect/Member;
    .locals 8

    .line 1
    const-string v0, "recordComponent"

    .line 2
    .line 3
    iget-object v1, p0, Lsa/d0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lsa/a;->a:Lsa/a$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    new-instance v4, Lsa/a$a;

    .line 19
    .line 20
    const-string v5, "getType"

    .line 21
    .line 22
    new-array v6, v2, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "getAccessor"

    .line 29
    .line 30
    new-array v7, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v4, v5, v0}, Lsa/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    move-object v0, v4

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    new-instance v0, Lsa/a$a;

    .line 42
    .line 43
    invoke-direct {v0, v3, v3}, Lsa/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-object v0, Lsa/a;->a:Lsa/a$a;

    .line 47
    .line 48
    :cond_0
    iget-object v0, v0, Lsa/a$a;->b:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "null cannot be cast to non-null type java.lang.reflect.Method"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v3, v0

    .line 65
    check-cast v3, Ljava/lang/reflect/Method;

    .line 66
    .line 67
    :goto_1
    if-eqz v3, :cond_2

    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 71
    .line 72
    const-string v1, "Can\'t find `getAccessor` method"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getType()Lcb/w;
    .locals 8

    .line 1
    const-string v0, "recordComponent"

    .line 2
    .line 3
    iget-object v1, p0, Lsa/d0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lsa/a;->a:Lsa/a$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :try_start_0
    new-instance v4, Lsa/a$a;

    .line 19
    .line 20
    const-string v5, "getType"

    .line 21
    .line 22
    new-array v6, v2, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v6, "getAccessor"

    .line 29
    .line 30
    new-array v7, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v4, v5, v0}, Lsa/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    move-object v0, v4

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    new-instance v0, Lsa/a$a;

    .line 42
    .line 43
    invoke-direct {v0, v3, v3}, Lsa/a$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    sput-object v0, Lsa/a;->a:Lsa/a$a;

    .line 47
    .line 48
    :cond_0
    iget-object v0, v0, Lsa/a$a;->a:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "null cannot be cast to non-null type java.lang.Class<*>"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v3, v0

    .line 65
    check-cast v3, Ljava/lang/Class;

    .line 66
    .line 67
    :goto_1
    if-eqz v3, :cond_2

    .line 68
    .line 69
    new-instance v0, Lsa/t;

    .line 70
    .line 71
    invoke-direct {v0, v3}, Lsa/t;-><init>(Ljava/lang/reflect/Type;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/NoSuchMethodError;

    .line 76
    .line 77
    const-string v1, "Can\'t find `getType` method"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method
