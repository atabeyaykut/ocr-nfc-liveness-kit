.class public final Ll8/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll8/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll8/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Ll8/b0;)Ll8/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ll8/b0;",
            ")",
            "Ll8/p<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-static {p1}, Ll8/d0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const-class v1, Ljava/util/Map;

    .line 14
    .line 15
    if-eq p2, v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    const-class v3, Ljava/util/Properties;

    .line 21
    .line 22
    const/4 v4, 0x2

    .line 23
    if-ne p1, v3, :cond_2

    .line 24
    .line 25
    new-array p1, v4, [Ljava/lang/reflect/Type;

    .line 26
    .line 27
    const-class p2, Ljava/lang/String;

    .line 28
    .line 29
    aput-object p2, p1, v0

    .line 30
    .line 31
    aput-object p2, p1, v2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    invoke-static {p1, p2, v1}, Lm8/a;->c(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p1, p2, v1}, Lm8/a;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    .line 49
    .line 50
    if-eqz p2, :cond_3

    .line 51
    .line 52
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    new-array p1, v4, [Ljava/lang/reflect/Type;

    .line 60
    .line 61
    const-class p2, Ljava/lang/Object;

    .line 62
    .line 63
    aput-object p2, p1, v0

    .line 64
    .line 65
    aput-object p2, p1, v2

    .line 66
    .line 67
    :goto_0
    new-instance p2, Ll8/a0;

    .line 68
    .line 69
    aget-object v0, p1, v0

    .line 70
    .line 71
    aget-object p1, p1, v2

    .line 72
    .line 73
    invoke-direct {p2, p3, v0, p1}, Ll8/a0;-><init>(Ll8/b0;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ll8/m;

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ll8/m;-><init>(Ll8/p;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
